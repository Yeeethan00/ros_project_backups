execute_process(COMMAND "/home/mypc/ROSex/y-robot_ws/build/yrobot_drivers_bringup/rosserial/rosserial_arduino/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/mypc/ROSex/y-robot_ws/build/yrobot_drivers_bringup/rosserial/rosserial_arduino/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
