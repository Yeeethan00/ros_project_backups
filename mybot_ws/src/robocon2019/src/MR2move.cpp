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
double side=5;//�����Ƕ��������ٶ�
double angle_1;
float result[5][200];//���صĽӿ�����
float time_delay;//�������ŵ���ʱ
int i=0;
int j;
int k=0;//�����ñ���
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
status statement[4][400];//��������״̬�ĺ����壬change0


void  single_step(int leg)//������Ӧ����
{
	if(leg==RB||leg==LB)
		{legtype=1;}
	else{legtype=-1;}// hou  jiao tiaozheng

        double time[400],L2=0.28,L3=0.28,L4=0.1,step_size=0.35,height=0.2,period=1,D=0.55;  //��λ�롢�� ,change1
	double angle_known=3.1415926535;//2.0944;//��Ӧ��Լ���ǣ����Լ��ټ�������,change2
        static	double J2X[400],J2XB[400],J2Z[400],J2ZB[400],L[400],angle_a[400],angle_b_a[400],La[400],angle_2[400],angle_3[400],angle_4[400];//�����ݶ�Ӧ����
	
	double sin2;
	
	//i=i%400;
	/*if(i>200)
		time[i]=0.005*(i-200)+0.005;//ʱ���ۼ�,ÿһʱ��0.005s,��Ҫ��ʱ��д���·�
	else{*/
	time[i]=0.005*i+0.005;//}
        if(time[i]<0)
           { time[i]=0;}
    	J2X[i] =i<200 ? (step_size * (time[i] / period - (0.5 / pi) * sin(2 * pi * time[i] / period))):(step_size * ((2-time[i]) / period - (0.5 / pi) * sin(2 * pi * (2-time[i]) / period)));//��Ӧ��ĩ��x����,change2
	J2XB[i] =i<200 ? (step_size * ( (1-time[i])/ period - (0.5 / pi) * sin(2 * pi * (1-time[i]) / period))):(step_size * ((time[i]-1) / period - (0.5 / pi) * sin(2 * pi * (time[i]-1) / period)));//��Ӧ��ĩ��x����,change2
    	J2Z[i] = (i<200? (height * (0.5 - 0.5 * cos( 2 * pi * time[i] / period) )):0)-D ;//��Ӧ��ĩ��z����
	J2ZB[i] = (i<200? 0:(height * (0.5 - 0.5 * cos( 2 * pi * (time[i]-10) / period) )))-D;
    	L[i] = sqrt(pow((((leg==RB)||(leg==LF)) ? J2X[i]: J2XB[i]),2) + pow(((leg==RB)||(leg==LF) ? J2Z[i]: J2ZB[i]),2));//��Ӧl
    	angle_a [i]= atan((((leg==RB)||(leg==LF)) ? J2X[i]: J2XB[i])/(((leg==RB)||(leg==LF))? J2Z[i]: J2ZB[i]));//��Ӧ��
    	angle_b_a[i] = asin(L4 * sin(angle_known) / L[i]);//��Ӧ�¦�,���ڵ�λ����,change2
	//	sin2=sin(angle_known)
    	La[i] = sqrt(pow(L4,2) + pow(L[i],2) + 2 * L[i] * L4 * cos(angle_known + angle_b_a[i]));//��Ӧla
    	angle_2[i] = pi/2 +angle_b_a[i]+legtype*angle_a[i] - acos((pow(L2,2) + pow(La[i],2) - pow(L3,2))/(2 * L2 * La[i]));//��Ӧ��2��joint_1��,change3
    	angle_3[i] = acos((pow(L2,2) + pow(L3,2) - pow(La[i],2))/(2 * L3 * L2));//��Ӧ��3(joint_2)
    	angle_4[i] = angle_known - acos((pow(La[i],2) + pow(L3,2) - pow(L2,2))/(2 * L3 * La[i]));//��Ӧ��4(joint_3)
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
	if(side>6&&side<6)//sideӦ���պ�����ٶȣ�6ΪԤ����ֵ
	angle_1=0.189*side-0.35;
//��Ӧshoulder_joint
}

int main(int argc, char **argv){
         //��ʼ��ROS
    ros::init(argc, argv, "MR2move"); 
    // Ϊ���̵Ľڵ㴴��һ���������һ��������NodeHandle��ʼ���ڵ�
    ros::NodeHandle n;
    // ������ʾ�������еĴ�С���Ƚ��ȳ���
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
    ros::Rate loop_rate(1000);  // ��ѭ��Ƶ��

   
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
        // ���ߣ���ʹ����Ƶ��Ϊ200Hz
        loop_rate.sleep();
	ROS_INFO("   ");
	/*if(i==200)
		return 0;*/
    }
    }
    return 0;
}







