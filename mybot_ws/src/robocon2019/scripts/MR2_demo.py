#!/usr/bin/env python
# coding=utf-8
import rospy, cv2, cv_bridge, numpy
from std_msgs.msg import Int32
from sensor_msgs.msg import Image
from geometry_msgs.msg import Point, Vector3


class MR2_DEMO:
    def __init__(self):
        self.bridge=cv_bridge.CvBridge()
        self.image_sub=rospy.Subscriber('camera/rgb/image_raw',Image,self.image_callback)
	self.point_sub=rospy.Subscriber('MR2_point',Point,self.point_callback)
	self.mr2_demo_pub=rospy.Publisher('/MR2_state',Int32,queue_size=10)
	self.mr2_demo_vel_pub=rospy.Publisher('/MR2_state',Vector3,queue_size=10)
	self.MR2_vel=Vector3()
	self.state=0
	self.Point_x=0
	self.Point_y=0
	self.lineflag=0


    def image_callback(self, msg):
	cv2.namedWindow("window",1)
        image=self.bridge.imgmsg_to_cv2(msg,desired_encoding='bgr8')
        hsv=cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
        lower_line=numpy.array([0,0,100])`#跑道
        upper_line=numpy.array([245,31,31])
        mask=cv2.inRange(hsv, lower_line, upper_line)
	

        h,w,d=image.shape
        search_top=3*h/4
        search_bot=search_top+20
        mask[0:search_top,0:w]=0
        mask[search_bot:h,0:w]=0
        M=cv2.moments(mask)
        if M['m00']>0:
            cx=int(M['m10']/M['m00'])
            cy=int(M['m10']/M['m00'])
            cv2.circle(image,(cx,cy),20,(0,0,225),-1)
	    err=cx-w/2
	    self.MR2_vel.x=0.2
	    self.MR2_vel.z=-float(err)/100
	    self.mr2_demo_vel_pub.publish(self.MR2_vel)
        cv2.imshow("window",image)
        cv2.waitKey(3)

    def point_callback(self, msg):
	self.Point_x=msg.x
	self.Point_y=msg.y
	
    

if __name == '__main__':

    rospy.init_node('MR2_demo')
    rate=rospy.Rate(10)
    MR2_demo=MR2_DEMO()
    while not rospy.is_shutdown:
    	rate.sleep()
