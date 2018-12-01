#!/usr/bin/env python
# coding=utf-8
from math import pi
import rospy

class FakeActuator:
 #   def __init__(self):
    def set_volume(volume_value):
        print "音量为： %d" % volume_value
    def toggle_light(light_bool):
        if light_bool:
            print "灯点亮"
    def set_position(position):
        print "设定位置"
