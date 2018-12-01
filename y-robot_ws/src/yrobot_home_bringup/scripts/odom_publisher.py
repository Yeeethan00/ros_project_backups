#!/usr/bin/env python
# coding=utf-8
import rospy
import sys
import math
import tf
from geometry_msgs.msg import Twist,Quaternion,TransformStamped
from nav_msgs.msg import Odometry


global vx
vx=0.0
global vy
vy=0.0
global vth
vth=0.0

global receive_flag
receive_flag=0

def raw_vel_callback(msg):
    global vx
    vx=msg.linear.x
    global vy
    vy=msg.linear.y
    global vth
    vth=msg.angular.z

    global receive_flag
    receive_flag=1
    #print ("vx:%f  vy:%f  vth:%f"%(vx,vy,vth))



if __name__=='__main__':
    x=0.0
    y=0.0
    th=0.0

    rospy.init_node('odom_piblisher')
    sub=rospy.Subscriber("raw_vel",Twist,raw_vel_callback)
    pub=rospy.Publisher('odom',Odometry,queue_size=10)

    current_time=rospy.get_rostime()
    last_time=rospy.get_rostime()

    odom_trans=TransformStamped()
    odom_broadcaster=tf.TransformBroadcaster()
    odom=Odometry()

    rate=rospy.Rate(10)

    while not rospy.is_shutdown():
        current_time=rospy.get_rostime()

        dt=(current_time-last_time).to_sec()
        delta_x=(vx*math.cos(th)-vy*math.sin(th))*dt
        delta_y=(vx*math.sin(th)+vy*math.cos(th))*dt
        delta_th=vth*dt

        x+=delta_x
        y+=delta_y
        th+=delta_th

        odom_quat=Quaternion(*tf.transformations.quaternion_from_euler(0,0,th))

        odom_trans.header.stamp=current_time
        odom_trans.header.frame_id="odom"
        odom_trans.child_frame_id="base_link"
        odom_trans.transform.translation.x=x
        odom_trans.transform.translation.y=y
        odom_trans.transform.translation.z=-1.0
        odom_trans.transform.rotation=odom_quat


        odom_broadcaster.sendTransform((x, y, 0.0),(odom_quat.x,odom_quat.y,odom_quat.z,odom_quat.w),rospy.Time.now(),"base_link","odom")

        odom.header.stamp=current_time
        odom.header.frame_id="odom"

        odom.pose.pose.position.x=x
        odom.pose.pose.position.y=y
        odom.pose.pose.position.z=0.0
        odom.pose.pose.orientation=odom_quat

        odom.child_frame_id="base_link"
        odom.twist.twist.linear.x=vx
        odom.twist.twist.linear.y=vy
        odom.twist.twist.angular.z=vth

        #pub.publish(odom)
        if receive_flag:
            rospy.loginfo("Pose:[ %f, %f, %f]\r" % (x, y, 0.0)) 

        last_time=current_time
        rate.sleep()
