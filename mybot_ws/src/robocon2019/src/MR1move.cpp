#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "nav_msgs/Odometry.h"
#include <iostream>
#include <iomanip>
#include <stdlib.h>
#include <math.h>
#include <ctime>
using namespace std; 
#define pi 3.1415926
#define r 10 //轮子到质心的距离


int tempx=51;
int tempy=51;
int avgx=0;
int avgy=0;
int i=0;//节点序号
float roadx=-0.5;//这是vx
float roady=-0.5;//速度环反馈回的每计时单位走的距离这是vy
float roadw=0;//这是w;
float xmax=-1000;
float ymax=-1000;
float xmin=1000;
float ymin=1000;
float mag[3]; //三轴磁场,用陀螺仪读数后计入
float tempangle;
 float vx;
  float vy;
   float w;
 float vx_cb;
  float vy_cb;
   float w_cb;

struct SITE
{int x;
 int y;
	};
struct SITE site[10]={{600,500},{600,390},{460,390},{460,500},{300,500},{300,390},{200,390},{200,420},{-95,420},{-95,0}};
//以上为节点的结构体，可新加入节点，也可改变坐标


void Delay(int time){
	clock_t now=clock();
	while(clock()-now<time);
}




 void magnet()//处理地磁场
{
	if(mag[0]>xmax){xmax=mag[0];};
       if(mag[1]>ymax){ymax=mag[1];};
       if(mag[0]<xmin){xmin=mag[0];};
       if(mag[1]<ymin){ymin=mag[1];};
	   avgx=(xmax+xmin)/2;
	   avgy=(ymax+ymin)/2;
}
 /*********************************************************
** vx, vy :在世界坐标系下x,y方向上的速度
** w :在世界坐标系下角速度
** a :机器人坐标系x轴相对于世界坐标系x轴的角度
** 0 <= a <= 360
** 开始时两个x轴重合 a == 0 ,传入的a的单位为度数
**********************************************************/
typedef struct{
    float vx ;
    float vy ;
    float w ;
}RobSpeed;//现已不再调用
/****************************
** v1,v2,v3为三个轮子的转速
****************************/
typedef struct {
    float v1;
    float v2;
    float v3;
}WheelSpeed;

void speed_chain( WheelSpeed p)
{//此处为速度环，将给出的轮子速度转为PWM占空比
float channel_1;	//移植时为通道1
float channel_2;	//移植时为通道2
float channel_3;	//移植时为通道3
float kp_speed;
float ki_speed;
float kd_speed;
float now_speed1;
float now_speed2;
float now_speed3;
float error11;
float error11_last;
float error11_acc;

float error2;
float error2_last;
float error2_acc;

float error3;
float error3_last;
float error3_acc;

error11=p.v1-now_speed1;
channel_1=kp_speed*error11+ki_speed*error11_acc+kd_speed*( error11-error11_last);
 error11_last=error11;
error11_acc+=error11;//以上为对通道1PWM PID

error3=p.v2-now_speed2;
channel_2=kp_speed*error2+ki_speed*error2_acc+kd_speed*( error2-error2_last);
 error2_last=error2;
error2_acc+=error2;//以上为对通道2PWM PID

error3=p.v3-now_speed3;
channel_3=kp_speed*error3+ki_speed*error3_acc+kd_speed*( error3-error3_last);
 error3_last=error3;
error3_acc+=error3;//以上为对通道3PWM PID

}

WheelSpeed speed_control( float speed_x , float speed_y,float speed_w ,float a)
{
    WheelSpeed p;
    //从世界坐标系转换到机器人坐标系
    if(speed_x>=1)speed_x=1;
    if(speed_y>=1)speed_y=1;
    if(speed_w>=1)speed_w=1;
     vx = speed_x*cos(pi*a/180) + speed_y*sin(pi*a/180) ;
     vy = speed_x*(-sin(pi*a/180)) + speed_y*cos(pi*a/180) ;
     w = speed_w ;
    //从机器人坐标系到轮子
    p.v1 = (sqrt(3.0)*vx + vy + w*r)/3 ;
    p.v2 = (-sqrt(3.0)*vx + vy + w*r)/3 ;
    p.v3 = ((-2)*vy + w*r)/3 ;//这些赋给速度环
    return p ;
}



float angle(float x,float y,float avg1,float avg2)//角度计算函数，magx与magy分别为地磁x轴磁场强度与y轴磁场强度
{
float  b=atan2(x-avg1,y-avg2)*180/3.14;
return b;
}

void PID_Position_Contorl(float x_err , float y_err ) 
{
	float KP_positon=0.05,KI_positon=0, KD_position=0 ,x_sum ,y_sum ,sum_max,x_now_speed;
	float speed_MAX=10,   speed_MIN=-10,   Motor_dead_left_backward,  Motor_dead_left_forward, y_now_speed;
	float Motor_dead_right_backward,   Motor_dead_right_forward;
	float last_x_err , last_y_err , sample_time;
	float speed_w;
   	char dirction = 0 ;
	
	if(abs (x_err) > 0 )  
		dirction = 'x';                                                        // 判断 x 方向是否到达目的地 
	else if( abs (x_err) == 0 && abs(y_err) >= 0 )  dirction = 'y';
	
	
	
	if( dirction == 'x' )
	{
		x_sum += x_err;
	    if( x_sum > sum_max )  x_sum = sum_max;
		x_now_speed= x_err *  KP_positon ;//+ x_sum * KI_positon + ( last_x_err - x_err ) / sample_time * KD_position;
		last_x_err = x_err;
	
    if(x_now_speed > speed_MAX)	
        x_now_speed = speed_MAX;
    if(x_now_speed < speed_MIN)	
        x_now_speed = speed_MIN;	                                         	 //设置最大值最小值上限 
		/*
	if(x_now_speed > 0) 			
        x_now_speed += Motor_dead_left_backward;
    else if(x_now_speed < 0) 		
        x_now_speed -= Motor_dead_left_forward;	   */                            	//考虑死区电压 
    }
	

	                 
	else if(  dirction == 'y' )
	{
		y_sum += y_err;
		if( y_sum > sum_max )  y_sum = sum_max;
	   y_now_speed= y_err *  KP_positon ;//+ y_sum * KI_positon + ( last_y_err - y_err ) / sample_time * KD_position;
	
	    last_y_err = y_err;	
        if(y_now_speed > speed_MAX)	
            y_now_speed = speed_MAX;
        if(y_now_speed < speed_MIN)	
            y_now_speed = speed_MIN;                                                 //设置最大值最小值上限 		
        /*
        if(y_now_speed > 0)			
            y_now_speed += Motor_dead_right_backward;
        else if(y_now_speed < 0)		 
            y_now_speed -= Motor_dead_right_forward;       */                           //死区电压         
    }
	
	speed_control(x_now_speed,y_now_speed,0, angle(mag[0],mag[1],avgx,avgy));//四个参数分别为x期望速度，y期望速度，期望角速度，当前角度
                                                                                        
}
void roll(float x)//内部填入解算出的旋转函数,最后给出avx,avy
{float pid_speed_w=0;
float tempangle2=0;
float tempangle3=0;
float speed_x=0;
float speed_y=0;
float kp=1;
float ki=0;
float kd=0;
float tageta=0;//目标角度为0
static float angle=x;//当前角度
tempangle=tageta-angle;
pid_speed_w=kp*tempangle+ki*tempangle3+kd*(tempangle-tempangle2);
	tempangle2=tempangle;
	tempangle3=tempangle3+tempangle;

	speed_control( speed_x ,speed_y,pid_speed_w, angle);//四个参数分别为x期望速度，y期望速度，期望角速度，当前角度
//解算出的速度环旋转函数,向其输入pid_speed_w;
}

void location()
{

static	float sitex=690;
static float sitey=500;//自身所在坐标
int kp=1;
float ki=0;
float kd=0;
	
	for(i=0;i<=9;i++)
	{
		while(sitex!=site[i].x||sitey!=site[i].y)
	{
		tempx=site[i].x-sitex;//errX1
	
	tempy=site[i].y-sitey;//ERRY1
	PID_Position_Contorl(tempx,tempy);//此处填入位置环函数
	//调用CNT寄存器对roadx,roady进行赋值
	if(sitex!=site[i].x)
		{roadx=vx;
			sitex=sitex+roadx;
	}
	if(sitey!=site[i].y)
		{roady=vy;
			sitey=sitey+roady;
	}
	if(sitex==site[9].x&&sitey==site[9].y)
	{i=10;
	//向FLASH写入新的重启区位置，以及目标节点
	}
	cout<<"与第"<<i+1<<"点坐标差值"<<endl;
	cout<<"x:"<<tempx<<endl;
	cout<<"y:"<<tempy<<endl;}
	}
}//此处为坐标读取，移植后，将tempx,tempy赋给位置环，位置环中的反馈的计入roadx,roady并与节点比较，
//不成功，则将反馈累加计入,比对成功后，指向下一节点

void error()//处理中途遇到障碍，写入时钟滴答中断
{
	int flag;
	if(flag==1)//此处条件移植时变为传感器置出的电平
	{tempx=-200;
	tempy=0;
	site[i].x=site[i].x-200;
	//以上两数写入的位置环函数
	}
	else if(flag==2)
	{
	tempx=200;
	tempy=0;
	//以上两数写入的位置环函数
	site[i].x=site[i].x+200;//对正在前往的节点进行修正
	}
	
} 
void velCallback(const nav_msgs::Odometry& msg)
{
 // ROS_INFO("I heard: [%s]", msg->data.c_str());
   //ROS_INFO("x%f  y%f", vx_cb , vy_cb);
	vx_cb=msg.twist.twist.linear.x;
	vy_cb=msg.twist.twist.linear.y;
	w_cb=msg.twist.twist.angular.z;
			//ROS_INFO("x%f  y%f", vx_cb , vy_cb);
}                                                                                  
int main(int argc, char **argv){
    	static	float sitex=690;
	static float sitey=500;//自身所在坐标
	int kp=1;
	float ki=0;
	float kd=0;
	float time=0;
    /*ROS*/
    //初始化ROS，名称重映射（唯一），必须为base name，不含/
    ros::init(argc, argv, "MR1move"); 
   // 为进程的节点创建一个句柄，第一个创建的NodeHandle初始化节点
   ros::NodeHandle n;
   // 告诉主机要在chatter topic上发布一个std_msgs消息
   // 主机会订阅所有chatter topic节点，参数表示发布队列的大小（先进先出）
   ros::Publisher vel_pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 1000);
   ros::Subscriber vel_sub = n.subscribe("/odom", 1000, velCallback);
   ros::Rate loop_rate(100);  // 自循环频率
   geometry_msgs::Twist msg_vel;
   i=0;
    while(ros::ok()){
	//填写给三轴磁场赋值的函数
	//magnet();
	//处理地磁场


	if(angle(mag[0],mag[1],avgx,avgy)==0)
	{//姿态正确，开始走路，此处angle的值为方向环给的初值，两个值
		//location();
	for(;i<=9;i++)
	{
	   while(abs(site[i].x-sitex)>=1||abs(site[i].y-sitey)>=1)
	   {
		
		//Delay(1);
		//ROS_INFO("timr%f",time);
   		
		
			tempx=site[i].x-sitex;//errX1
	
			tempy=site[i].y-sitey;//ERRY1
			PID_Position_Contorl(tempx,tempy);//此处填入位置环函数
			//调用CNT寄存器对roadx,roady进行赋值
			if(sitex!=site[i].x){
				//ROS_INFO("x%f", vx);
				sitex=sitex+vx_cb;	
				ROS_INFO("x%f, xx%f", sitex, vx_cb);
			}
			if(sitey!=site[i].y){
				sitey=sitey+vy_cb;
				ROS_INFO("x%f", sitex);
			}

			if(sitex==site[9].x&&sitey==site[9].y)
			{
				i=10;
			//向FLASH写入新的重启区位置，以及目标节点
			}
			
			msg_vel.linear.x=vx;
			msg_vel.linear.y=vy;
			msg_vel.linear.z=0;
			msg_vel.angular.x=0;
			msg_vel.angular.y=0;
			msg_vel.angular.z=w;
                	ROS_INFO("vx%f  vy%f  w%f", msg_vel.linear.x , msg_vel.linear.y, msg_vel.angular.z);
			vel_pub.publish(msg_vel);
		        ros::spinOnce();
        // 休眠，来使发布频率为10Hz
         		loop_rate.sleep();
		
	  }
	 ros::spinOnce();
        // 休眠，来使发布频率为10Hz
         loop_rate.sleep(); 
	 if(i==9){
		msg_vel.linear.x=0;
	   	msg_vel.linear.y=0;
	  	msg_vel.linear.z=0;
	  	msg_vel.angular.x=0;
	  	msg_vel.angular.y=0;
	  	msg_vel.angular.z=0;
	  	vel_pub.publish(msg_vel);
		return 0;
	 }
	
	}
		
	}
	else {//姿态不对，方向环纠正姿态
		roll(angle(mag[0],mag[1],avgx,avgy));
	}


    }
    return 0;
}
