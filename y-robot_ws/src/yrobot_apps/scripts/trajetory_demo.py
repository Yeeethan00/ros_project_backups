#!/usr/bin/env python
# coding=utf-8

import rospy
import actionlib
from control_msgs.msg import FollowJointTrajectoryAction, FollowJointTrajectoryGoal    
#FollowJointTrajectoryAction就是一个msg类型,FollowJointTrajectoryGoal是action的子类型。   
#一个Action消息会包含ActionGoal  ActionFeedback ActionResult子消息，goal是ActionGoal的内部消息主体。
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
class TrajectoryDemo():
    def __init__(self):
        rospy.init_node('trajectory_demo')
        
        # Set to True to move back to the starting configurations
        reset = rospy.get_param('~reset', False)
        
        # Set to False to wait for arm to finish before moving head
        sync = rospy.get_param('~sync', True)
        
        # Which joints define the arm?
        arm_joints = [	'shoulder_arm_joint',
   		 	'upper_arm_joint',
     			'middle_arm_joint',
		 	'fore_arm_joint',
   		 	'tool_joint']
        
        # Which joints define the head?
        #head_joints = ['head_pan_joint', 'head_tilt_joint']
        
        if reset:
            # Set the arm back to the resting position
            arm_goal  = [0, 0, 0, 0, 0]
            
            # Re-center the head
            #head_goal = [0, 0]  
        else:
            # Set a goal configuration for the arm
            arm_goal  = [-0.3, -2.0, -1.0, 0.8, 1.0]
            
            # Set a goal configuration for the head
            #head_goal = [-1.3, -0.1]
    
        # Connect to the right arm trajectory action server
        rospy.loginfo('Waiting for arm trajectory controller...')
        
        arm_client = actionlib.SimpleActionClient('yrobot_arm_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
        
        arm_client.wait_for_server()
        
        rospy.loginfo('...connected.')
        
        # Connect to the head trajectory action server
        #rospy.loginfo('Waiting for head trajectory controller...')
    
        #head_client = actionlib.SimpleActionClient('head_controller/follow_joint_trajectory', FollowJointTrajectoryAction)
       
        #head_client.wait_for_server()
       
        #rospy.loginfo('...connected.')    
    
        # Create a single-point arm trajectory with the arm_goal as the end-point
        arm_trajectory = JointTrajectory()
        arm_trajectory.joint_names = arm_joints
        arm_trajectory.points.append(JointTrajectoryPoint())#points开始为空，现在在尾部增加一个元素。
        arm_trajectory.points[0].positions = arm_goal
        arm_trajectory.points[0].velocities = [0.0 for i in arm_joints]
        arm_trajectory.points[0].accelerations = [0.0 for i in arm_joints]
        arm_trajectory.points[0].time_from_start = rospy.Duration(3.0)
        #jtac会在start跟goal位置中间插入额外的关节参数，所以我们只需要使用1个point指出goal位置就行。
	#（JTAC我觉得就是前面使用moveitassitant时的轨迹规划过程控制，它会去调用OMPL）
        #速度和加速度的值都设为0，因为这是目标点，肯定要停下来。
        # Send the trajectory to the arm action server
        rospy.loginfo('Moving the arm to goal position...')
        
        # Create an empty trajectory goal
        arm_goal = FollowJointTrajectoryGoal()
        
        # Set the trajectory component to the goal trajectory created above
        arm_goal.trajectory = arm_trajectory
        
        # Specify zero tolerance for the execution time
        arm_goal.goal_time_tolerance = rospy.Duration(0.0)
    
        # Send the goal to the action server
        arm_client.send_goal(arm_goal)
        
        if not sync:
            # Wait for up to 5 seconds for the motion to complete 
            arm_client.wait_for_result(rospy.Duration(5.0))
        
        # Create a single-point head trajectory with the head_goal as the end-point
        #head_trajectory = JointTrajectory()
        #head_trajectory.joint_names = head_joints
        #head_trajectory.points.append(JointTrajectoryPoint())
        #head_trajectory.points[0].positions = head_goal
        #head_trajectory.points[0].velocities = [0.0 for i in head_joints]
        #head_trajectory.points[0].accelerations = [0.0 for i in head_joints]
        #head_trajectory.points[0].time_from_start = rospy.Duration(3.0)
    
        # Send the trajectory to the head action server
        #rospy.loginfo('Moving the head to goal position...')
        
        #head_goal = FollowJointTrajectoryGoal()
        #head_goal.trajectory = head_trajectory
        #head_goal.goal_time_tolerance = rospy.Duration(0.0)
    
        # Send the goal
        #head_client.send_goal(head_goal)
        
        # Wait for up to 5 seconds for the motion to complete 
        #head_client.wait_for_result(rospy.Duration(5.0))
        
        #rospy.loginfo('...done')
        
if __name__ == '__main__':
    try:
	while not rospy.is_shutdown():
        	TrajectoryDemo()
    except rospy.ROSInterruptException:
        pass

