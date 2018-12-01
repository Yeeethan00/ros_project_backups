# Install script for directory: /home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mypc/ROSex/chessbot/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nasa_r2_common_msgs/msg" TYPE FILE FILES
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/CommandStatus.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/ControllerJointSettings.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/ControllerPoseSettings.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/ForceControlAxisArray.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/ForceControlAxis.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/Gains.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/JointCapability.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/JointCommand.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/JointControlCalibrationMode.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/JointControlClearFaultMode.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/JointControlCoeffState.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/JointControlCommandMode.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/JointControlDataArray.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/JointControlData.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/JointControlMode.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/JointControl.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/JointStatusArray.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/JointStatus.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/JointTrajectoryReplan.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/LabeledControllerJointSettings.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/LabeledControllerPoseSettings.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/LabeledGains.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/LabeledGripperPositionCommand.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/LabeledJointControlDataArray.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/LabeledJointState.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/LabeledJointTrajectory.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/LabeledPoseTrajectory.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/LabeledTrajectoryMonitorFactors.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/MappedType.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/Modes.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/Parameter.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/PDMCStatus.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/PoseCommandArray.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/PoseCommand.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/PoseCommandParams.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/PoseCommandStatus.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/PoseState.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/PoseTrajectory.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/PoseTrajectoryPoint.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/PoseTrajectoryReplan.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/PoseTwistStamped.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/PowerState.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/PriorityArray.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/ReplanType.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/SetParameterRequest.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/SetParameterResponse.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/StringArray.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/SystemCore.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/SystemStatus.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/TorsoStatus.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/TrajectoryMonitorFactors.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/ValueType.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/VariantMapArray.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/VariantMap.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/WrenchMonitorLimit.msg"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg/WrenchState.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nasa_r2_common_msgs/srv" TYPE FILE FILES
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/srv/ParseTableScene.srv"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/srv/Power.srv"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/srv/ResetTableScene.srv"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/srv/Servo.srv"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/srv/SetJointMode.srv"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/srv/SetTipName.srv"
    "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/srv/TakeSnapshot.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nasa_r2_common_msgs/cmake" TYPE FILE FILES "/home/mypc/ROSex/chessbot/build/deprecated_nasa_r2_common/nasa_r2_common_msgs/catkin_generated/installspace/nasa_r2_common_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/mypc/ROSex/chessbot/devel/include/nasa_r2_common_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/mypc/ROSex/chessbot/devel/share/roseus/ros/nasa_r2_common_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/mypc/ROSex/chessbot/devel/share/common-lisp/ros/nasa_r2_common_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/mypc/ROSex/chessbot/devel/share/gennodejs/ros/nasa_r2_common_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/mypc/ROSex/chessbot/devel/lib/python2.7/dist-packages/nasa_r2_common_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/mypc/ROSex/chessbot/devel/lib/python2.7/dist-packages/nasa_r2_common_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mypc/ROSex/chessbot/build/deprecated_nasa_r2_common/nasa_r2_common_msgs/catkin_generated/installspace/nasa_r2_common_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nasa_r2_common_msgs/cmake" TYPE FILE FILES "/home/mypc/ROSex/chessbot/build/deprecated_nasa_r2_common/nasa_r2_common_msgs/catkin_generated/installspace/nasa_r2_common_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nasa_r2_common_msgs/cmake" TYPE FILE FILES
    "/home/mypc/ROSex/chessbot/build/deprecated_nasa_r2_common/nasa_r2_common_msgs/catkin_generated/installspace/nasa_r2_common_msgsConfig.cmake"
    "/home/mypc/ROSex/chessbot/build/deprecated_nasa_r2_common/nasa_r2_common_msgs/catkin_generated/installspace/nasa_r2_common_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nasa_r2_common_msgs" TYPE FILE FILES "/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/package.xml")
endif()

