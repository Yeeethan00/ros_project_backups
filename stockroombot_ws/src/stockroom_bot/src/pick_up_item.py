#!/usr/bin/env python
# coding=utf-8
import sys,rospy,tf,actionlib,moveit_commander
from control_msgs.msg import (GripperCommandAction,GripperCommandGoal)
from geometry_msgs.msg import *
from tf.transformations import quaternion_from_euler
from look_at_bin import look_at_bin
from std_srvs.srv import Empty
from moveit_msgs.msg import CollisionObject
from moveit_python import PlanningSceneInterface

if __name__=='__main__':
    moveit_commander.roscpp_initialize(sys.argv)
    rospy.init_node('pick_up_item')
    args=rospy.myargv(argv=sys.argv)
    if len(args)!=2:
        print("usage: pick_up_item.py BIN_NUMBER")
        sys.exit(1)
    item_frame="item_%d" % int(args[1])

    rospy.wait_for_service("/clear_octomap")
    clear_octomap=rospy.ServiceProxy("/clear_octomap",Empty)

    gripper=actionlib.SimpleActionClient("gripper_controller/gripper_action",GripperCommandAction)
    gripper.wait_for_server()   #等待机械手服务启动

    arm=moveit_commander.MoveGroupCommander("arm")  #用MoveGroupCommander作为MoveIt运动规划的控制接口
    arm.allow_replanning(True)
    tf_listener=tf.TransfromListener()  #使用TransfromListener实例订阅其他模块播发的变换，包括机器人各关系状态，move_base导航模块和ALVAR检测模块
    rate=rospy.Rate(10)

    gripper_goal=GripperCommandGoal()   #预先声明一个抓取目标实例给机械手动作服务器

    gripper_goal.command.max_effort=10.0

    scene=PlanningSceneInterface("base_link")

    p=Pose()
    p.position.x=0.4+0.15
    p.position.y=-0.4
    p.position.z=0.7+0.15
    p.orientation=Quaternion(*quaternion_from_euler(0,1,1))
    arm.set_pose_target(p)  #设定一个抓取前的预备状态，在这个状态下，机械手不遮挡相机并且保持一定高度方便规划后续的抓取路径

    while True:
        if arm.go(True):
            break
        clear_octomap()
        scene.clear()

    look_at_bin()
    while not rospy.is_shutdown():
        rate.sleep()
        try:
            t=tf_listener.getLatestCommomTime('/base_link',item_frame)  #设定一个200ms的阀值确保得到的交换离当前足够近
            if(rospy.Time.now()-t).to_sec()>0.2:
                rospy.sleep(0.1)
                continue
            (item_translation,item_orientation)=tf_listener.lookupTransform('/base_link',item_frame,t)  #从tf的交换树中提取所需的坐标交换值
        except(tf.Exception,tf.LookupException,tf.ConnectivityException,tf.ExtrapolationException):
            continue

        gripper_goal.command.position=0.15
        gripper.send_goal(gripper_goal) #启动机械手抓取
        gripper.wait_for_result(rospy.Duration(1.0))

        print "item: " + str(item_translation)
        scene.addCube("item",0.05,item_translation[0],item_translation[1],item_translation[2])

        p.position.x=item_translation[0]-0.01-0.06
        p.position.y=item_translation[1]
        p.position.z=item_translation[2]+0.04+0.14
        p.orientation=Quaternion(*quaternion_from_euler(0,1.2,0))
        arm.set_pose_target(p)
        arm.go(True)    #调用MoveIt规划一条避障抓取路线

        #os.system("rosservice call clear_octomap")

        gripper_goal.command.position=0
        gripper.send_goal(gripper_goal)
        gripper.wait_for_result(rospy.Duration(2.0))

        scene.removeAttachedObject("item")

        clear_octomap()

        p.position.x=0.00
        p.position.y=-0.25
        p.position.z=0.75-.1
        p.orientation=Quaternion(*quaternion_from_euler(0,-1.5,-1.5))
        arm.set_pose_target(p)
        arm.go(True)    #控制机械手拾起物体
        break   #执行成功后退出外层循环，否则外层循环继续等待检测到指定物体
