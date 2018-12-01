cmake_minimum_required(VERSION 2.8.3)

project(robocon2019)

find_package(catkin REQUIRED
  roscpp
  rospy
  std_msgs
  message_generation
  genmsg
  actionlib
  actionlib_msgs
  sensor_msgs
  geometry_msgs
)

generate_messages(
   DEPENDENCIES
   actionlib_msgs std_msgs sensor_msgs geometry_msgs
 )

catkin_package(
   CATKIN_DEPENDS actionlib_msgs
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)
 
add_executable(MR1move src/MR1move.cpp)
add_executable(MR2_scan2point src/MR2_scan2point.cpp)
add_executable(MR2move src/MR2move.cpp)

## Rename C++ executable without prefix
## The above recommended prefix causes long target names, the following renames the
## target back to the shorter version for ease of user use
## e.g. "rosrun someones_pkg node" instead of "rosrun someones_pkg someones_pkg_node"
# set_target_properties(${PROJECT_NAME}_node PROPERTIES OUTPUT_NAME node PREFIX "")

## Add cmake target dependencies of the executable
## same as for the library above
# add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
 add_dependencies(MR1move ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
 add_dependencies(MR2_scan2point ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
 add_dependencies(MR2move ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Specify libraries to link a library or executable target against
 target_link_libraries(MR1move
   ${catkin_LIBRARIES}
 )
 target_link_libraries(MR2_scan2point
   ${catkin_LIBRARIES}
 )
 target_link_libraries(MR2move
   ${catkin_LIBRARIES}
 )
find_package(roslaunch)

foreach(dir config launch meshes urdf)
	install(DIRECTORY ${dir}/
		DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/${dir})
endforeach(dir)
