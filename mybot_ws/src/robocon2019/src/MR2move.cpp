#include "ros/ros.h"
#include "trajectory_msgs/JointTrajectory.h"
#include <string> 
#include<stdio.h>
#include<math.h>
#include <iostream>
#include "stdlib.h"
#include<string.h>
#include "ros/time.h" 
using namespace std;

#define pi 3.1415926
#define LF 0
#define RF 1
#define RB 2
#define LB 3
double legtype=1;
double leg=1;
double side=5;//陀螺仪读出侧面速度
double angle_1;
float result[5][200];//返回的接口数组
float time_delay;//后迈步脚的延时
int i=0;
int j;
int k=0;//计数用变量
struct status
{double j2x;
double j2z;
double angle_1;
double angle_2;
double angle_3;
double angle_4;
double la;
double l;
double angle_b_a;
}; 
status statement[4][400];//储存期望状态的函数体，change0


void  single_step(int leg)//给出对应的腿
{
	if(leg==RB||leg==LB)
		{legtype=1;}
	else{legtype=-1;}// hou  jiao tiaozheng

        double time[400],L2=0.28,L3=0.28,L4=0.1,step_size=0.35,height=0.2,period=1,D=0.55;  //单位秒、米 ,change1
	double angle_known=3.1415926535;//2.0944;//对应的约束角，可以减少计算条件,change2
        static	double J2X[400],J2XB[400],J2Z[400],J2ZB[400],L[400],angle_a[400],angle_b_a[400],La[400],angle_2[400],angle_3[400],angle_4[400];//各数据对应数组
	
	double sin2;
	
	//i=i%400;
	/*if(i>200)
		time[i]=0.005*(i-200)+0.005;//时间累加,每一时刻0.005s,若要延时，写在下方
	else{*/
	time[i]=0.005*i+0.005;//}
        if(time[i]<0)
           { time[i]=0;}
    	J2X[i] =i<200 ? (step_size * (time[i] / period - (0.5 / pi) * sin(2 * pi * time[i] / period))):(step_size * ((2-time[i]) / period - (0.5 / pi) * sin(2 * pi * (2-time[i]) / period)));//对应足末端x坐标,change2
	J2XB[i] =i<200 ? (step_size * ( (1-time[i])/ period - (0.5 / pi) * sin(2 * pi * (1-time[i]) / period))):(step_size * ((time[i]-1) / period - (0.5 / pi) * sin(2 * pi * (time[i]-1) / period)));//对应足末端x坐标,change2
    	J2Z[i] = (i<200? (height * (0.5 - 0.5 * cos( 2 * pi * time[i] / period) )):0)-D ;//对应足末端z坐标
	J2ZB[i] = (i<200? 0:(height * (0.5 - 0.5 * cos( 2 * pi * (time[i]-10) / period) )))-D;
    	L[i] = sqrt(pow((((leg==RB)||(leg==LF)) ? J2X[i]: J2XB[i]),2) + pow(((leg==RB)||(leg==LF) ? J2Z[i]: J2ZB[i]),2));//对应l
    	angle_a [i]= atan((((leg==RB)||(leg==LF)) ? J2X[i]: J2XB[i])/(((leg==RB)||(leg==LF))? J2Z[i]: J2ZB[i]));//对应α
    	angle_b_a[i] = asin(L4 * sin(angle_known) / L[i]);//对应βα,存在单位问题,change2
	//	sin2=sin(angle_known)
    	La[i] = sqrt(pow(L4,2) + pow(L[i],2) + 2 * L[i] * L4 * cos(angle_known + angle_b_a[i]));//对应la
    	angle_2[i] = pi/2 +angle_b_a[i]+legtype*angle_a[i] - acos((pow(L2,2) + pow(La[i],2) - pow(L3,2))/(2 * L2 * La[i]));//对应θ2（joint_1）,change3
    	angle_3[i] = acos((pow(L2,2) + pow(L3,2) - pow(La[i],2))/(2 * L3 * L2));//对应θ3(joint_2)
    	angle_4[i] = angle_known - acos((pow(La[i],2) + pow(L3,2) - pow(L2,2))/(2 * L3 * La[i]));//对应θ4(joint_3)
	if(leg==LF){
		statement[LF][i].j2x=J2X[i];
		statement[LF][i].j2z=J2Z[i];
		statement[LF][i].angle_2=angle_2[i];
		statement[LF][i].angle_3=angle_3[i];
		statement[LF][i].angle_4=angle_4[i];
		double angle_a111=(angle_2[i]-pi/2-angle_b_a[i]+acos((pow(L2,2) + pow(La[i],2) - pow(L3,2))/(2 * L2 * La[i]))) /legtype;
		ROS_INFO("LF  %d angle_a111:%f  %f  %f  %f   %f   %f",i, angle_a111,J2X[i], J2Z[i],statement[LF][i].angle_2,statement[LF][i].angle_3,statement[LF][i].angle_4);
	}
	else if(leg==RB){
		statement[RB][i].j2x=J2X[i];
		statement[RB][i].j2z=J2Z[i];
		statement[RB][i].angle_2=angle_2[i];
		statement[RB][i].angle_3=angle_3[i];
		statement[RB][i].angle_4=angle_4[i];
		double angle_a121=(angle_2[i]-pi/2-angle_b_a[i]+acos((pow(L2,2) + pow(La[i],2) - pow(L3,2))/(2 * L2 * La[i]))) /legtype;
		ROS_INFO("RB  %d  angle_a121:%f   %f   %f   %f",i, angle_a121,statement[RB][i].angle_2,statement[RB][i].angle_3,statement[RB][i].angle_4);
	}	
	else if(leg==RF){
		statement[RF][i].j2x=J2XB[i]; 		
		statement[RF][i].j2z=J2ZB[i]; 	
		statement[RF][i].angle_2=angle_2[i];   	
		statement[RF][i].angle_3=angle_3[i];   	
		statement[RF][i].angle_4=angle_4[i];
		ROS_INFO("RF  %d  %f %f  %f   %f   %f",i,J2XB[i],J2ZB[i], statement[RF][i].angle_2,statement[RF][i].angle_3,statement[RF][i].angle_4);
	}
	else if(leg==LB){
		statement[LB][i].j2x=J2XB[i];
		statement[LB][i].j2z=J2ZB[i];    	
		statement[LB][i].angle_2=angle_2[i];    	
		statement[LB][i].angle_3=angle_3[i];    	
		statement[LB][i].angle_4=angle_4[i];
		ROS_INFO("LB  %d   %f   %f   %f",i, statement[LB][i].angle_2,statement[LB][i].angle_3,statement[LB][i].angle_4);
	}

}
void errorroll()
{
	if(side>6&&side<6)//side应接收横向的速度，6为预设阈值
	angle_1=0.189*side-0.35;
//对应shoulder_joint
}

int main(int argc, char **argv){
         //初始化ROS
    ros::init(argc, argv, "MR2move"); 
    // 为进程的节点创建一个句柄，第一个创建的NodeHandle初始化节点
    ros::NodeHandle n;
    // 参数表示发布队列的大小（先进先出）
    ros::Publisher left_front_pub = n.advertise<trajectory_msgs::JointTrajectory>("/left_front_controller/command", 1000);
    ros::Publisher right_front_pub = n.advertise<trajectory_msgs::JointTrajectory>("/right_front_controller/command", 1000);
    ros::Publisher left_back_pub = n.advertise<trajectory_msgs::JointTrajectory>("/left_back_controller/command", 1000);
    ros::Publisher right_back_pub = n.advertise<trajectory_msgs::JointTrajectory>("/right_back_controller/command", 1000);
    int z=0, y=200;double times=3.6;
    trajectory_msgs::JointTrajectory left_front_pose;
    left_front_pose.joint_names.resize(4);
    left_front_pose.points.resize(1);
    left_front_pose.points[0].positions.resize(4);
    left_front_pose.joint_names[0]="left_front_shoulder_joint";
    left_front_pose.joint_names[1]="left_front_3_joint";
    left_front_pose.joint_names[2]="left_front_2_joint";
    left_front_pose.joint_names[3]="left_front_1_joint";
 
    trajectory_msgs::JointTrajectory right_front_pose;
    right_front_pose.joint_names.resize(4);
    right_front_pose.points.resize(1);
    right_front_pose.points[0].positions.resize(4);
    right_front_pose.joint_names[0]="right_front_shoulder_joint";
    right_front_pose.joint_names[1]="right_front_3_joint";
    right_front_pose.joint_names[2]="right_front_2_joint";
    right_front_pose.joint_names[3]="right_front_1_joint";

    trajectory_msgs::JointTrajectory left_back_pose;
    left_back_pose.joint_names.resize(4);
    left_back_pose.points.resize(1);
    left_back_pose.points[0].positions.resize(4);
    left_back_pose.joint_names[0]="left_back_shoulder_joint";
    left_back_pose.joint_names[1]="left_back_3_joint";
    left_back_pose.joint_names[2]="left_back_2_joint";
    left_back_pose.joint_names[3]="left_back_1_joint";

    trajectory_msgs::JointTrajectory right_back_pose;
    right_back_pose.joint_names.resize(4);
    right_back_pose.points.resize(1);
    right_back_pose.points[0].positions.resize(4);
    right_back_pose.joint_names[0]="right_back_shoulder_joint";
    right_back_pose.joint_names[1]="right_back_3_joint";
    right_back_pose.joint_names[2]="right_back_2_joint";
    right_back_pose.joint_names[3]="right_back_1_joint";
    ros::Rate loop_rate(1000);  // 自循环频率

   
    int sta;
    while(ros::ok()){
    for(i=0;i<400;i++){
	single_step(LF);
	left_front_pose.points[0].positions[0]=0;//angle_1=rolltype*arctan(j2y/j2z)
        left_front_pose.points[0].positions[1]=pi/2-statement[LF][i].angle_2;ROS_INFO("%f",left_front_pose.points[0].positions[1]);
        left_front_pose.points[0].positions[2]=statement[LF][i].angle_3-pi;
        left_front_pose.points[0].positions[3]=pi-statement[LF][i].angle_4;
	left_front_pose.points[0].time_from_start = ros::Duration(0.001);
        //ROS_INFO("%d   %f   %f   %f",i, statement[LF][i].angle_2,statement[LF][i].angle_3,statement[LF][i].angle_4);

	single_step(RB);
	right_back_pose.points[0].positions[0]=0;
        right_back_pose.points[0].positions[1]=statement[RB][i].angle_2-pi/2;ROS_INFO("%f",right_back_pose.points[0].positions[1]);
        right_back_pose.points[0].positions[2]=pi-statement[RB][i].angle_3;
        right_back_pose.points[0].positions[3]=statement[RB][i].angle_4-pi;
	right_back_pose.points[0].time_from_start = ros::Duration(0.001);
	

	
	single_step(RF);
	right_front_pose.points[0].positions[0]=0;
        right_front_pose.points[0].positions[1]=pi/2-statement[RF][i].angle_2;
        right_front_pose.points[0].positions[2]=statement[RF][i].angle_3-pi;
        right_front_pose.points[0].positions[3]=pi-statement[RF][i].angle_4;
	right_front_pose.points[0].time_from_start = ros::Duration(0.001);
	

	
	single_step(LB);
        left_back_pose.points[0].positions[0]=0;
        left_back_pose.points[0].positions[1]=statement[LB][i].angle_2-pi/2;
        left_back_pose.points[0].positions[2]=pi-statement[LB][i].angle_3;
        left_back_pose.points[0].positions[3]=statement[LB][i].angle_4-pi;
	left_back_pose.points[0].time_from_start = ros::Duration(0.001);

	right_back_pub.publish(right_back_pose);
	left_front_pub.publish(left_front_pose);
	right_front_pub.publish(right_front_pose);
	left_back_pub.publish(left_back_pose);
	ros::spinOnce();
        // 休眠，来使发布频率为200Hz
        loop_rate.sleep();
	ROS_INFO("   ");
	/*if(i==200)
		return 0;*/
    }
    }
    return 0;
}







