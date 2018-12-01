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
#define r 10 //���ӵ����ĵľ���


int tempx=51;
int tempy=51;
int avgx=0;
int avgy=0;
int i=0;//�ڵ����
float roadx=-0.5;//����vx
float roady=-0.5;//�ٶȻ������ص�ÿ��ʱ��λ�ߵľ�������vy
float roadw=0;//����w;
float xmax=-1000;
float ymax=-1000;
float xmin=1000;
float ymin=1000;
float mag[3]; //����ų�,�������Ƕ��������
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
//����Ϊ�ڵ�Ľṹ�壬���¼���ڵ㣬Ҳ�ɸı�����


void Delay(int time){
	clock_t now=clock();
	while(clock()-now<time);
}




 void magnet()//����شų�
{
	if(mag[0]>xmax){xmax=mag[0];};
       if(mag[1]>ymax){ymax=mag[1];};
       if(mag[0]<xmin){xmin=mag[0];};
       if(mag[1]<ymin){ymin=mag[1];};
	   avgx=(xmax+xmin)/2;
	   avgy=(ymax+ymin)/2;
}
 /*********************************************************
** vx, vy :����������ϵ��x,y�����ϵ��ٶ�
** w :����������ϵ�½��ٶ�
** a :����������ϵx���������������ϵx��ĽǶ�
** 0 <= a <= 360
** ��ʼʱ����x���غ� a == 0 ,�����a�ĵ�λΪ����
**********************************************************/
typedef struct{
    float vx ;
    float vy ;
    float w ;
}RobSpeed;//���Ѳ��ٵ���
/****************************
** v1,v2,v3Ϊ�������ӵ�ת��
****************************/
typedef struct {
    float v1;
    float v2;
    float v3;
}WheelSpeed;

void speed_chain( WheelSpeed p)
{//�˴�Ϊ�ٶȻ����������������ٶ�תΪPWMռ�ձ�
float channel_1;	//��ֲʱΪͨ��1
float channel_2;	//��ֲʱΪͨ��2
float channel_3;	//��ֲʱΪͨ��3
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
error11_acc+=error11;//����Ϊ��ͨ��1PWM PID

error3=p.v2-now_speed2;
channel_2=kp_speed*error2+ki_speed*error2_acc+kd_speed*( error2-error2_last);
 error2_last=error2;
error2_acc+=error2;//����Ϊ��ͨ��2PWM PID

error3=p.v3-now_speed3;
channel_3=kp_speed*error3+ki_speed*error3_acc+kd_speed*( error3-error3_last);
 error3_last=error3;
error3_acc+=error3;//����Ϊ��ͨ��3PWM PID

}

WheelSpeed speed_control( float speed_x , float speed_y,float speed_w ,float a)
{
    WheelSpeed p;
    //����������ϵת��������������ϵ
    if(speed_x>=1)speed_x=1;
    if(speed_y>=1)speed_y=1;
    if(speed_w>=1)speed_w=1;
     vx = speed_x*cos(pi*a/180) + speed_y*sin(pi*a/180) ;
     vy = speed_x*(-sin(pi*a/180)) + speed_y*cos(pi*a/180) ;
     w = speed_w ;
    //�ӻ���������ϵ������
    p.v1 = (sqrt(3.0)*vx + vy + w*r)/3 ;
    p.v2 = (-sqrt(3.0)*vx + vy + w*r)/3 ;
    p.v3 = ((-2)*vy + w*r)/3 ;//��Щ�����ٶȻ�
    return p ;
}



float angle(float x,float y,float avg1,float avg2)//�Ƕȼ��㺯����magx��magy�ֱ�Ϊ�ش�x��ų�ǿ����y��ų�ǿ��
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
		dirction = 'x';                                                        // �ж� x �����Ƿ񵽴�Ŀ�ĵ� 
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
        x_now_speed = speed_MIN;	                                         	 //�������ֵ��Сֵ���� 
		/*
	if(x_now_speed > 0) 			
        x_now_speed += Motor_dead_left_backward;
    else if(x_now_speed < 0) 		
        x_now_speed -= Motor_dead_left_forward;	   */                            	//����������ѹ 
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
            y_now_speed = speed_MIN;                                                 //�������ֵ��Сֵ���� 		
        /*
        if(y_now_speed > 0)			
            y_now_speed += Motor_dead_right_backward;
        else if(y_now_speed < 0)		 
            y_now_speed -= Motor_dead_right_forward;       */                           //������ѹ         
    }
	
	speed_control(x_now_speed,y_now_speed,0, angle(mag[0],mag[1],avgx,avgy));//�ĸ������ֱ�Ϊx�����ٶȣ�y�����ٶȣ��������ٶȣ���ǰ�Ƕ�
                                                                                        
}
void roll(float x)//�ڲ�������������ת����,������avx,avy
{float pid_speed_w=0;
float tempangle2=0;
float tempangle3=0;
float speed_x=0;
float speed_y=0;
float kp=1;
float ki=0;
float kd=0;
float tageta=0;//Ŀ��Ƕ�Ϊ0
static float angle=x;//��ǰ�Ƕ�
tempangle=tageta-angle;
pid_speed_w=kp*tempangle+ki*tempangle3+kd*(tempangle-tempangle2);
	tempangle2=tempangle;
	tempangle3=tempangle3+tempangle;

	speed_control( speed_x ,speed_y,pid_speed_w, angle);//�ĸ������ֱ�Ϊx�����ٶȣ�y�����ٶȣ��������ٶȣ���ǰ�Ƕ�
//��������ٶȻ���ת����,��������pid_speed_w;
}

void location()
{

static	float sitex=690;
static float sitey=500;//������������
int kp=1;
float ki=0;
float kd=0;
	
	for(i=0;i<=9;i++)
	{
		while(sitex!=site[i].x||sitey!=site[i].y)
	{
		tempx=site[i].x-sitex;//errX1
	
	tempy=site[i].y-sitey;//ERRY1
	PID_Position_Contorl(tempx,tempy);//�˴�����λ�û�����
	//����CNT�Ĵ�����roadx,roady���и�ֵ
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
	//��FLASHд���µ�������λ�ã��Լ�Ŀ��ڵ�
	}
	cout<<"���"<<i+1<<"�������ֵ"<<endl;
	cout<<"x:"<<tempx<<endl;
	cout<<"y:"<<tempy<<endl;}
	}
}//�˴�Ϊ�����ȡ����ֲ�󣬽�tempx,tempy����λ�û���λ�û��еķ����ļ���roadx,roady����ڵ�Ƚϣ�
//���ɹ����򽫷����ۼӼ���,�ȶԳɹ���ָ����һ�ڵ�

void error()//������;�����ϰ���д��ʱ�ӵδ��ж�
{
	int flag;
	if(flag==1)//�˴�������ֲʱ��Ϊ�������ó��ĵ�ƽ
	{tempx=-200;
	tempy=0;
	site[i].x=site[i].x-200;
	//��������д���λ�û�����
	}
	else if(flag==2)
	{
	tempx=200;
	tempy=0;
	//��������д���λ�û�����
	site[i].x=site[i].x+200;//������ǰ���Ľڵ��������
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
	static float sitey=500;//������������
	int kp=1;
	float ki=0;
	float kd=0;
	float time=0;
    /*ROS*/
    //��ʼ��ROS��������ӳ�䣨Ψһ��������Ϊbase name������/
    ros::init(argc, argv, "MR1move"); 
   // Ϊ���̵Ľڵ㴴��һ���������һ��������NodeHandle��ʼ���ڵ�
   ros::NodeHandle n;
   // ��������Ҫ��chatter topic�Ϸ���һ��std_msgs��Ϣ
   // �����ᶩ������chatter topic�ڵ㣬������ʾ�������еĴ�С���Ƚ��ȳ���
   ros::Publisher vel_pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 1000);
   ros::Subscriber vel_sub = n.subscribe("/odom", 1000, velCallback);
   ros::Rate loop_rate(100);  // ��ѭ��Ƶ��
   geometry_msgs::Twist msg_vel;
   i=0;
    while(ros::ok()){
	//��д������ų���ֵ�ĺ���
	//magnet();
	//����شų�


	if(angle(mag[0],mag[1],avgx,avgy)==0)
	{//��̬��ȷ����ʼ��·���˴�angle��ֵΪ���򻷸��ĳ�ֵ������ֵ
		//location();
	for(;i<=9;i++)
	{
	   while(abs(site[i].x-sitex)>=1||abs(site[i].y-sitey)>=1)
	   {
		
		//Delay(1);
		//ROS_INFO("timr%f",time);
   		
		
			tempx=site[i].x-sitex;//errX1
	
			tempy=site[i].y-sitey;//ERRY1
			PID_Position_Contorl(tempx,tempy);//�˴�����λ�û�����
			//����CNT�Ĵ�����roadx,roady���и�ֵ
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
			//��FLASHд���µ�������λ�ã��Լ�Ŀ��ڵ�
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
        // ���ߣ���ʹ����Ƶ��Ϊ10Hz
         		loop_rate.sleep();
		
	  }
	 ros::spinOnce();
        // ���ߣ���ʹ����Ƶ��Ϊ10Hz
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
	else {//��̬���ԣ����򻷾�����̬
		roll(angle(mag[0],mag[1],avgx,avgy));
	}


    }
    return 0;
}
