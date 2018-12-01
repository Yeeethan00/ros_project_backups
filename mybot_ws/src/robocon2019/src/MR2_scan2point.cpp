/*************************************************************************
	> File Name: MR2_hokuyo2pose.cpp
	> Author: 
	> Mail: 
	> Created Time: 2018年10月12日 星期五 13时06分46秒
 ************************************************************************/

#include "ros/ros.h"
#include "geometry_msgs/Point.h"
#include "sensor_msgs/LaserScan.h"
#include <iostream>
#include <iomanip>
#include <stdlib.h>
#include <math.h>
#include <ctime>
using namespace std;
#define pi 3.1415926
#define samples 720

static float Pose_high[2]={5.36,4.348};
static float Pose_mid[2]={4.0,4.348};
static float Pose_low[2]={2.39,4.348};
float Point_x;
float Point_y;
float r_high;
float r_mid;
float r_low;


void scanCallback(const sensor_msgs::LaserScan& msg)
{
    float R[3]={0,0,0};
    int scanbuff[30];
    int j_scan=0;
    int space_b[4];
    int space_b_flag=0;
    int space_f[4];
    int space_f_flag=0;
    for(int i=0;i<samples-1;i++){
	if((msg.ranges[i]<15)&&((msg.ranges[i-1]<15)||(msg.ranges[i+1]<15))){
	    scanbuff[j_scan]=i;
	    
	    if(scanbuff[j_scan]-scanbuff[j_scan-1]>2){
		space_b[space_b_flag]=j_scan-1;
		//ROS_INFO("space_b_flag%d   %d",space_b_flag, space_b[space_b_flag]);
		space_b_flag++;
		//ROS_INFO("   ");
		space_f[space_f_flag]=j_scan;
		//ROS_INFO("space_f_flag%d   %d",space_f_flag, space_f[space_f_flag]);
		space_f_flag++;
	    }
	    //ROS_INFO("%d  %d  %f", j_scan,scanbuff[j_scan],msg.ranges[scanbuff[j_scan]]);

	    
	    j_scan++;
	}
    }
    //ROS_INFO("%d  %d", space_f_flag,space_b_flag);
    space_f[space_f_flag]=j_scan;
    int m;
    for(int i=0;i<space_f_flag;i++){
	for(m=space_f[i];m<space_f[i+1];m++){
	 R[i]+=msg.ranges[scanbuff[m]];
         //ROS_INFO("jsidjisjdisjdi%f", msg.ranges[scanbuff[m]]);
	}
	R[i]=R[i]/(space_f[i+1]-space_f[i]);
	//ROS_INFO("i%d  R[i]%f", i,R[i]);
    }
    r_high=R[0];
    r_mid=R[1];
    r_low=R[2];
    /*计算位置*/
    float Point_x_1=0.5*((r_high*r_high-r_mid*r_mid)/(Pose_mid[0]-Pose_high[0])+Pose_mid[0]+Pose_high[0]);
    float Point_y_1=Pose_high[1]-sqrt(r_high*r_high-(Point_x-Pose_high[0])*(Point_x-Pose_high[0]));

    float Point_x_2=0.5*((r_high*r_high-r_low*r_low)/(Pose_low[0]-Pose_high[0])+Pose_low[0]+Pose_high[0]);
    float Point_y_2=Pose_high[1]-sqrt(r_high*r_high-(Point_x-Pose_high[0])*(Point_x-Pose_high[0]));

    float Point_x_3=0.5*((r_low*r_low-r_mid*r_mid)/(Pose_mid[0]-Pose_low[0])+Pose_mid[0]+Pose_low[0]);
    float Point_y_3=Pose_low[1]-sqrt(r_low*r_low-(Point_x-Pose_low[0])*(Point_x-Pose_low[0]));
    
    Point_x=(Point_x_1+Point_x_2+Point_x_3)/3;
    Point_y=(Point_y_1+Point_y_2+Point_y_3)/3;
}
int main(int argc, char **argv){
    /*ROS*/
    //初始化ROS
    ros::init(argc, argv, "MR2_scan2point"); 
    // 为进程的节点创建一个句柄，第一个创建的NodeHandle初始化节点
    ros::NodeHandle n;
    // 参数表示发布队列的大小（先进先出）
    ros::Publisher point_pub = n.advertise<geometry_msgs::Point>("/MR2_point", 1000);
    ros::Subscriber scan_sub = n.subscribe("/scan", 1000, scanCallback);
    ros::Rate loop_rate(100);  // 自循环频率
    geometry_msgs::Point msg_Point;
    while(ros::ok()){
	msg_Point.x=Point_x;
	msg_Point.y=Point_y;
	point_pub.publish(msg_Point);
	ROS_INFO("%f %f %f", r_high,r_mid,r_low);
	ROS_INFO("%f %f", Point_x,Point_y);
	//一堆操作
	 ros::spinOnce();
        // 休眠，来使发布频率为100Hz
         loop_rate.sleep();
    }
    return 0;
}
