#!/usr/bin/env python
# coding=utf-8
from math import pi
from fake_sensor import FakeSensor	#导入相关代码模块
import rospy
import tf
from geometry_msgs.msg import Quaternion

def make_quaternion(angle):
    q=tf.transformations.quaternion_from_euler(0,0,angle)
    return Quaternion(*q)

if __name__=='__main__':
    sensor=FakeSensor()
    rospy.init_node('fake_sensor')
    pub=rospy.Publisher('angle',Quaternion,queue_size=10)
    rate=rospy.Rate(10.0)
    while not rospy.is_shutdown():
        angle=sensor.value()*2*pi/100.0
        q=make_quaternion(angle)
        pub.publish(q)
        rate.sleep()