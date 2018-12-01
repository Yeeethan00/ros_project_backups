#!/usr/bin/env python
# coding=utf-8
from math import pi
import rospy

class FakeSensor:
    def __init__(self):
	self.sensor_value=1000
    def value(self):
	return self.sensor_value
    def register_callback(self,func):
	a=self.sensor_value
	return func(a)
