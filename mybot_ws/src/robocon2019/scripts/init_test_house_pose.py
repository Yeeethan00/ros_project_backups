#!/usr/bin/env python
# coding=utf-8
import rospy
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint


if __name__ == '__main__':
    rospy.init_node('init_test_house_pose')
    rate=rospy.Rate(10)
    left_front_pose=JointTrajectory()
    left_front_pose_points=JointTrajectoryPoint()
    left_front_pub=rospy.Publisher('/left_front_controller/command',JointTrajectory,queue_size=10)
    left_front_pose.joint_names=["left_front_shoulder_joint","left_front_3_joint","left_front_2_joint","left_front_1_joint"]
    left_front_pose.points.append(JointTrajectoryPoint())
    left_front_pose.points[0].positions=[0,0.75,-1.75,0.95]
    left_front_pose.points[0].time_from_start = rospy.Duration(1.0)


    right_front_pose=JointTrajectory()
    right_front_pose_points=JointTrajectoryPoint()
    right_front_pub=rospy.Publisher('/right_front_controller/command',JointTrajectory,queue_size=10)
    right_front_pose.joint_names=["right_front_shoulder_joint","right_front_3_joint","right_front_2_joint","right_front_1_joint"]
    right_front_pose.points.append(JointTrajectoryPoint())
    right_front_pose.points[0].positions=[0,0.75,-1.75,0.95]
    right_front_pose.points[0].time_from_start = rospy.Duration(1.0)

    rate=rospy.Rate(10)
    left_back_pose=JointTrajectory()
    left_back_pose_points=JointTrajectoryPoint()
    left_back_pub=rospy.Publisher('/left_back_controller/command',JointTrajectory,queue_size=10)
    left_back_pose.joint_names=["left_back_shoulder_joint","left_back_3_joint","left_back_2_joint","left_back_1_joint"]
    left_back_pose.points.append(JointTrajectoryPoint())
    left_back_pose.points[0].positions=[0,-0.75,1.75,-0.95]
    left_back_pose.points[0].time_from_start = rospy.Duration(1.0)


    right_back_pose=JointTrajectory()
    right_back_pose_points=JointTrajectoryPoint()
    right_back_pub=rospy.Publisher('/right_back_controller/command',JointTrajectory,queue_size=10)
    right_back_pose.joint_names=["right_back_shoulder_joint","right_back_3_joint","right_back_2_joint","right_back_1_joint"]
    right_back_pose.points.append(JointTrajectoryPoint())
    right_back_pose.points[0].positions=[0,-0.75,1.75,-0.95]
    right_back_pose.points[0].time_from_start = rospy.Duration(1.0)

    i=0;
    while not i==25:
    	left_front_pub.publish(left_front_pose)
	right_front_pub.publish(right_front_pose)
	left_back_pub.publish(left_back_pose)	
	right_back_pub.publish(right_back_pose)
	i=i+1
    	rate.sleep()
    
