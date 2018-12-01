# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mypc/ROSex/y-robot_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mypc/ROSex/y-robot_ws/build

# Utility rule file for freenect_camera_gencfg.

# Include the progress variables for this target.
include yrobot_drivers_bringup/freenect_stack/freenect_camera/CMakeFiles/freenect_camera_gencfg.dir/progress.make

yrobot_drivers_bringup/freenect_stack/freenect_camera/CMakeFiles/freenect_camera_gencfg: /home/mypc/ROSex/y-robot_ws/devel/include/freenect_camera/FreenectConfig.h
yrobot_drivers_bringup/freenect_stack/freenect_camera/CMakeFiles/freenect_camera_gencfg: /home/mypc/ROSex/y-robot_ws/devel/lib/python2.7/dist-packages/freenect_camera/cfg/FreenectConfig.py


/home/mypc/ROSex/y-robot_ws/devel/include/freenect_camera/FreenectConfig.h: /home/mypc/ROSex/y-robot_ws/src/yrobot_drivers_bringup/freenect_stack/freenect_camera/cfg/Freenect.cfg
/home/mypc/ROSex/y-robot_ws/devel/include/freenect_camera/FreenectConfig.h: /opt/ros/kinetic/share/dynamic_reconfigure/templates/ConfigType.py.template
/home/mypc/ROSex/y-robot_ws/devel/include/freenect_camera/FreenectConfig.h: /opt/ros/kinetic/share/dynamic_reconfigure/templates/ConfigType.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mypc/ROSex/y-robot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating dynamic reconfigure files from cfg/Freenect.cfg: /home/mypc/ROSex/y-robot_ws/devel/include/freenect_camera/FreenectConfig.h /home/mypc/ROSex/y-robot_ws/devel/lib/python2.7/dist-packages/freenect_camera/cfg/FreenectConfig.py"
	cd /home/mypc/ROSex/y-robot_ws/build/yrobot_drivers_bringup/freenect_stack/freenect_camera && ../../../catkin_generated/env_cached.sh /home/mypc/ROSex/y-robot_ws/build/yrobot_drivers_bringup/freenect_stack/freenect_camera/setup_custom_pythonpath.sh /home/mypc/ROSex/y-robot_ws/src/yrobot_drivers_bringup/freenect_stack/freenect_camera/cfg/Freenect.cfg /opt/ros/kinetic/share/dynamic_reconfigure/cmake/.. /home/mypc/ROSex/y-robot_ws/devel/share/freenect_camera /home/mypc/ROSex/y-robot_ws/devel/include/freenect_camera /home/mypc/ROSex/y-robot_ws/devel/lib/python2.7/dist-packages/freenect_camera

/home/mypc/ROSex/y-robot_ws/devel/share/freenect_camera/docs/FreenectConfig.dox: /home/mypc/ROSex/y-robot_ws/devel/include/freenect_camera/FreenectConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/mypc/ROSex/y-robot_ws/devel/share/freenect_camera/docs/FreenectConfig.dox

/home/mypc/ROSex/y-robot_ws/devel/share/freenect_camera/docs/FreenectConfig-usage.dox: /home/mypc/ROSex/y-robot_ws/devel/include/freenect_camera/FreenectConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/mypc/ROSex/y-robot_ws/devel/share/freenect_camera/docs/FreenectConfig-usage.dox

/home/mypc/ROSex/y-robot_ws/devel/lib/python2.7/dist-packages/freenect_camera/cfg/FreenectConfig.py: /home/mypc/ROSex/y-robot_ws/devel/include/freenect_camera/FreenectConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/mypc/ROSex/y-robot_ws/devel/lib/python2.7/dist-packages/freenect_camera/cfg/FreenectConfig.py

/home/mypc/ROSex/y-robot_ws/devel/share/freenect_camera/docs/FreenectConfig.wikidoc: /home/mypc/ROSex/y-robot_ws/devel/include/freenect_camera/FreenectConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/mypc/ROSex/y-robot_ws/devel/share/freenect_camera/docs/FreenectConfig.wikidoc

freenect_camera_gencfg: yrobot_drivers_bringup/freenect_stack/freenect_camera/CMakeFiles/freenect_camera_gencfg
freenect_camera_gencfg: /home/mypc/ROSex/y-robot_ws/devel/include/freenect_camera/FreenectConfig.h
freenect_camera_gencfg: /home/mypc/ROSex/y-robot_ws/devel/share/freenect_camera/docs/FreenectConfig.dox
freenect_camera_gencfg: /home/mypc/ROSex/y-robot_ws/devel/share/freenect_camera/docs/FreenectConfig-usage.dox
freenect_camera_gencfg: /home/mypc/ROSex/y-robot_ws/devel/lib/python2.7/dist-packages/freenect_camera/cfg/FreenectConfig.py
freenect_camera_gencfg: /home/mypc/ROSex/y-robot_ws/devel/share/freenect_camera/docs/FreenectConfig.wikidoc
freenect_camera_gencfg: yrobot_drivers_bringup/freenect_stack/freenect_camera/CMakeFiles/freenect_camera_gencfg.dir/build.make

.PHONY : freenect_camera_gencfg

# Rule to build all files generated by this target.
yrobot_drivers_bringup/freenect_stack/freenect_camera/CMakeFiles/freenect_camera_gencfg.dir/build: freenect_camera_gencfg

.PHONY : yrobot_drivers_bringup/freenect_stack/freenect_camera/CMakeFiles/freenect_camera_gencfg.dir/build

yrobot_drivers_bringup/freenect_stack/freenect_camera/CMakeFiles/freenect_camera_gencfg.dir/clean:
	cd /home/mypc/ROSex/y-robot_ws/build/yrobot_drivers_bringup/freenect_stack/freenect_camera && $(CMAKE_COMMAND) -P CMakeFiles/freenect_camera_gencfg.dir/cmake_clean.cmake
.PHONY : yrobot_drivers_bringup/freenect_stack/freenect_camera/CMakeFiles/freenect_camera_gencfg.dir/clean

yrobot_drivers_bringup/freenect_stack/freenect_camera/CMakeFiles/freenect_camera_gencfg.dir/depend:
	cd /home/mypc/ROSex/y-robot_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mypc/ROSex/y-robot_ws/src /home/mypc/ROSex/y-robot_ws/src/yrobot_drivers_bringup/freenect_stack/freenect_camera /home/mypc/ROSex/y-robot_ws/build /home/mypc/ROSex/y-robot_ws/build/yrobot_drivers_bringup/freenect_stack/freenect_camera /home/mypc/ROSex/y-robot_ws/build/yrobot_drivers_bringup/freenect_stack/freenect_camera/CMakeFiles/freenect_camera_gencfg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : yrobot_drivers_bringup/freenect_stack/freenect_camera/CMakeFiles/freenect_camera_gencfg.dir/depend
