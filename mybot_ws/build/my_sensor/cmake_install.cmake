# Install script for directory: /home/mypc/ROSex/mybot_ws/src/my_sensor

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mypc/ROSex/mybot_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_sensor/srv" TYPE FILE FILES
    "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/FakeSensor.srv"
    "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/Light.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_sensor/action" TYPE FILE FILES "/home/mypc/ROSex/mybot_ws/src/my_sensor/action/Rotation.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_sensor/msg" TYPE FILE FILES
    "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationAction.msg"
    "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg"
    "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg"
    "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg"
    "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg"
    "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg"
    "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_sensor/cmake" TYPE FILE FILES "/home/mypc/ROSex/mybot_ws/build/my_sensor/catkin_generated/installspace/my_sensor-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/mypc/ROSex/mybot_ws/devel/include/my_sensor")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/mypc/ROSex/mybot_ws/devel/share/roseus/ros/my_sensor")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/mypc/ROSex/mybot_ws/devel/share/common-lisp/ros/my_sensor")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/mypc/ROSex/mybot_ws/devel/share/gennodejs/ros/my_sensor")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/mypc/ROSex/mybot_ws/devel/lib/python2.7/dist-packages/my_sensor")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/mypc/ROSex/mybot_ws/devel/lib/python2.7/dist-packages/my_sensor")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mypc/ROSex/mybot_ws/build/my_sensor/catkin_generated/installspace/my_sensor.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_sensor/cmake" TYPE FILE FILES "/home/mypc/ROSex/mybot_ws/build/my_sensor/catkin_generated/installspace/my_sensor-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_sensor/cmake" TYPE FILE FILES
    "/home/mypc/ROSex/mybot_ws/build/my_sensor/catkin_generated/installspace/my_sensorConfig.cmake"
    "/home/mypc/ROSex/mybot_ws/build/my_sensor/catkin_generated/installspace/my_sensorConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_sensor" TYPE FILE FILES "/home/mypc/ROSex/mybot_ws/src/my_sensor/package.xml")
endif()

