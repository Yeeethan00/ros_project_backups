#!/usr/bin/env python
# coding=utf-8
from math import pi
from fake_sensor import FakeSensor
import rospy
import tf
import threading 
from geometry_msgs.msg import Quaternion

def make_quaternion(angle):
    q=tf.transformations.quaternion_from_euler(0,0,angle)
    return Quaternion(*q)

def save_value(value):
    with lock:
	return value*2*pi/100.0

if __name__=='__main__':
    lock=threading.Lock()
    sensor=FakeSensor()
    angle=sensor.register_callback(save_value)
    rospy.init_node('fake_sensor')
    pub=rospy.Publisher('angle',Quaternion,queue_size=10)
    rate=rospy.Rate(10.0)
    while not rospy.is_shutdown():
        with lock:
            if angle:
                q=make_quaternion(angle)
                pub.publish(q)
        rate.sleep()
