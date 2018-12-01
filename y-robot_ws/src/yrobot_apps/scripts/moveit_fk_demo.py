#!/usr/bin/env python

"""
    moveit_fk_demo.py - Version 0.1 2014-01-14
    
    Use forward kinemtatics to move the arm to a specified set of joint angles
    
    Created for the Pi Robot Project: http://www.pirobot.org
    Copyright (c) 2014 Patrick Goebel.  All rights reserved.

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.5
    
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details at:
    
    http://www.gnu.org/licenses/gpl.html
"""

import rospy, sys
import moveit_commander
from control_msgs.msg import GripperCommand

class MoveItDemo:
    def __init__(self):
        # Initialize the move_group API
        moveit_commander.roscpp_initialize(sys.argv)

        # Initialize the ROS node
        rospy.init_node('moveit_demo', anonymous=True)
 
        # Connect to the right_arm move group
        arm = moveit_commander.MoveGroupCommander('arm')
        
        # Connect to the right_gripper move group
        #right_gripper = moveit_commander.MoveGroupCommander('right_gripper')
                
        # Get the name of the end-effector link
        end_effector_link = arm.get_end_effector_link()
        
        # Display the name of the end_effector link
        rospy.loginfo("The end effector link is: " + str(end_effector_link))
        
        # Set a small tolerance on joint angles
        arm.set_goal_joint_tolerance(0.001)
         
        # Set target joint values for the arm: joints are in the order they appear in
        # the kinematic tree.
        joint_positions = [0.0, 0.0, 0.50, 0.50,0.5]
 
        # Set the arm's goal configuration to the be the joint positions
        arm.set_joint_value_target(joint_positions)
                 
        # Plan and execute the motion
        arm.go()
        rospy.sleep(1)
         
        # Save this configuration for later
        arm.remember_joint_values('saved_config', joint_positions)
                  
        # Set the goal configuration to the named configuration saved earlier
        arm.set_named_target('saved_config')
         
        # Plan and execute the motion
        arm.go()
        rospy.sleep(1)
        
        # Cleanly shut down MoveIt
        moveit_commander.roscpp_shutdown()
        
        # Exit the script
        moveit_commander.os._exit(0)

if __name__ == "__main__":
    try:
        MoveItDemo()
    except rospy.ROSInterruptException:
        pass
