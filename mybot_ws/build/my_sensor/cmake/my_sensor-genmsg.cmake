# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "my_sensor: 7 messages, 2 services")

set(MSG_I_FLAGS "-Imy_sensor:/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(my_sensor_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg" NAME_WE)
add_custom_target(_my_sensor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_sensor" "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg" ""
)

get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationAction.msg" NAME_WE)
add_custom_target(_my_sensor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_sensor" "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationAction.msg" "my_sensor/RotationResult:actionlib_msgs/GoalStatus:my_sensor/RotationGoal:my_sensor/RotationActionFeedback:my_sensor/RotationActionGoal:my_sensor/RotationFeedback:actionlib_msgs/GoalID:my_sensor/RotationActionResult:std_msgs/Header"
)

get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/FakeSensor.srv" NAME_WE)
add_custom_target(_my_sensor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_sensor" "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/FakeSensor.srv" "geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg" NAME_WE)
add_custom_target(_my_sensor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_sensor" "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg" "my_sensor/RotationGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/Light.srv" NAME_WE)
add_custom_target(_my_sensor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_sensor" "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/Light.srv" ""
)

get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg" NAME_WE)
add_custom_target(_my_sensor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_sensor" "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg" ""
)

get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg" NAME_WE)
add_custom_target(_my_sensor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_sensor" "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg" "my_sensor/RotationFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg" NAME_WE)
add_custom_target(_my_sensor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_sensor" "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg" "my_sensor/RotationResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg" NAME_WE)
add_custom_target(_my_sensor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_sensor" "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sensor
)
_generate_msg_cpp(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sensor
)
_generate_msg_cpp(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sensor
)
_generate_msg_cpp(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sensor
)
_generate_msg_cpp(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sensor
)
_generate_msg_cpp(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sensor
)
_generate_msg_cpp(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sensor
)

### Generating Services
_generate_srv_cpp(my_sensor
  "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/FakeSensor.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sensor
)
_generate_srv_cpp(my_sensor
  "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/Light.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sensor
)

### Generating Module File
_generate_module_cpp(my_sensor
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sensor
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(my_sensor_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(my_sensor_generate_messages my_sensor_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_cpp _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationAction.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_cpp _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/FakeSensor.srv" NAME_WE)
add_dependencies(my_sensor_generate_messages_cpp _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_cpp _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/Light.srv" NAME_WE)
add_dependencies(my_sensor_generate_messages_cpp _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_cpp _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_cpp _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_cpp _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_cpp _my_sensor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_sensor_gencpp)
add_dependencies(my_sensor_gencpp my_sensor_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_sensor_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sensor
)
_generate_msg_eus(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sensor
)
_generate_msg_eus(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sensor
)
_generate_msg_eus(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sensor
)
_generate_msg_eus(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sensor
)
_generate_msg_eus(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sensor
)
_generate_msg_eus(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sensor
)

### Generating Services
_generate_srv_eus(my_sensor
  "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/FakeSensor.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sensor
)
_generate_srv_eus(my_sensor
  "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/Light.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sensor
)

### Generating Module File
_generate_module_eus(my_sensor
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sensor
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(my_sensor_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(my_sensor_generate_messages my_sensor_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_eus _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationAction.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_eus _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/FakeSensor.srv" NAME_WE)
add_dependencies(my_sensor_generate_messages_eus _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_eus _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/Light.srv" NAME_WE)
add_dependencies(my_sensor_generate_messages_eus _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_eus _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_eus _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_eus _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_eus _my_sensor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_sensor_geneus)
add_dependencies(my_sensor_geneus my_sensor_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_sensor_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sensor
)
_generate_msg_lisp(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sensor
)
_generate_msg_lisp(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sensor
)
_generate_msg_lisp(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sensor
)
_generate_msg_lisp(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sensor
)
_generate_msg_lisp(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sensor
)
_generate_msg_lisp(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sensor
)

### Generating Services
_generate_srv_lisp(my_sensor
  "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/FakeSensor.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sensor
)
_generate_srv_lisp(my_sensor
  "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/Light.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sensor
)

### Generating Module File
_generate_module_lisp(my_sensor
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sensor
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(my_sensor_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(my_sensor_generate_messages my_sensor_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_lisp _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationAction.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_lisp _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/FakeSensor.srv" NAME_WE)
add_dependencies(my_sensor_generate_messages_lisp _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_lisp _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/Light.srv" NAME_WE)
add_dependencies(my_sensor_generate_messages_lisp _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_lisp _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_lisp _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_lisp _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_lisp _my_sensor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_sensor_genlisp)
add_dependencies(my_sensor_genlisp my_sensor_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_sensor_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sensor
)
_generate_msg_nodejs(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sensor
)
_generate_msg_nodejs(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sensor
)
_generate_msg_nodejs(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sensor
)
_generate_msg_nodejs(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sensor
)
_generate_msg_nodejs(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sensor
)
_generate_msg_nodejs(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sensor
)

### Generating Services
_generate_srv_nodejs(my_sensor
  "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/FakeSensor.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sensor
)
_generate_srv_nodejs(my_sensor
  "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/Light.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sensor
)

### Generating Module File
_generate_module_nodejs(my_sensor
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sensor
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(my_sensor_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(my_sensor_generate_messages my_sensor_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_nodejs _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationAction.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_nodejs _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/FakeSensor.srv" NAME_WE)
add_dependencies(my_sensor_generate_messages_nodejs _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_nodejs _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/Light.srv" NAME_WE)
add_dependencies(my_sensor_generate_messages_nodejs _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_nodejs _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_nodejs _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_nodejs _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_nodejs _my_sensor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_sensor_gennodejs)
add_dependencies(my_sensor_gennodejs my_sensor_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_sensor_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sensor
)
_generate_msg_py(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sensor
)
_generate_msg_py(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sensor
)
_generate_msg_py(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sensor
)
_generate_msg_py(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sensor
)
_generate_msg_py(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sensor
)
_generate_msg_py(my_sensor
  "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sensor
)

### Generating Services
_generate_srv_py(my_sensor
  "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/FakeSensor.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sensor
)
_generate_srv_py(my_sensor
  "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/Light.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sensor
)

### Generating Module File
_generate_module_py(my_sensor
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sensor
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(my_sensor_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(my_sensor_generate_messages my_sensor_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationGoal.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_py _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationAction.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_py _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/FakeSensor.srv" NAME_WE)
add_dependencies(my_sensor_generate_messages_py _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionGoal.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_py _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/src/my_sensor/srv/Light.srv" NAME_WE)
add_dependencies(my_sensor_generate_messages_py _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationResult.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_py _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionFeedback.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_py _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationActionResult.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_py _my_sensor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg/RotationFeedback.msg" NAME_WE)
add_dependencies(my_sensor_generate_messages_py _my_sensor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_sensor_genpy)
add_dependencies(my_sensor_genpy my_sensor_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_sensor_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sensor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_sensor
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(my_sensor_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(my_sensor_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(my_sensor_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sensor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/my_sensor
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(my_sensor_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(my_sensor_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(my_sensor_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sensor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_sensor
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(my_sensor_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(my_sensor_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(my_sensor_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sensor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/my_sensor
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(my_sensor_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(my_sensor_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(my_sensor_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sensor)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sensor\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_sensor
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(my_sensor_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(my_sensor_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(my_sensor_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
