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
CMAKE_SOURCE_DIR = /home/ubuntu/bill_ros/bill_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/bill_ros/bill_ws/build

# Include any dependencies generated for this target.
include tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/depend.make

# Include the progress variables for this target.
include tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/progress.make

# Include the compile flags for this target's objects.
include tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/flags.make

tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.o: tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/flags.make
tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.o: /home/ubuntu/bill_ros/bill_ws/src/tufts_service_robots/tbot2_examples/tbot2_roamer/src/roamer_demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/bill_ros/bill_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.o"
	cd /home/ubuntu/bill_ros/bill_ws/build/tufts_service_robots/tbot2_examples/tbot2_roamer && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.o -c /home/ubuntu/bill_ros/bill_ws/src/tufts_service_robots/tbot2_examples/tbot2_roamer/src/roamer_demo.cpp

tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.i"
	cd /home/ubuntu/bill_ros/bill_ws/build/tufts_service_robots/tbot2_examples/tbot2_roamer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/bill_ros/bill_ws/src/tufts_service_robots/tbot2_examples/tbot2_roamer/src/roamer_demo.cpp > CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.i

tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.s"
	cd /home/ubuntu/bill_ros/bill_ws/build/tufts_service_robots/tbot2_examples/tbot2_roamer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/bill_ros/bill_ws/src/tufts_service_robots/tbot2_examples/tbot2_roamer/src/roamer_demo.cpp -o CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.s

tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.o.requires:

.PHONY : tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.o.requires

tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.o.provides: tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.o.requires
	$(MAKE) -f tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/build.make tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.o.provides.build
.PHONY : tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.o.provides

tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.o.provides.build: tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.o


# Object files for target roamer_demo
roamer_demo_OBJECTS = \
"CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.o"

# External object files for target roamer_demo
roamer_demo_EXTERNAL_OBJECTS =

/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.o
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/build.make
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /opt/ros/kinetic/lib/libtf.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /opt/ros/kinetic/lib/libtf2_ros.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /opt/ros/kinetic/lib/libactionlib.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /opt/ros/kinetic/lib/libmessage_filters.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /opt/ros/kinetic/lib/libroscpp.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /opt/ros/kinetic/lib/libtf2.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /opt/ros/kinetic/lib/librosconsole.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /usr/lib/arm-linux-gnueabihf/liblog4cxx.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /opt/ros/kinetic/lib/librostime.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /opt/ros/kinetic/lib/libcpp_common.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /usr/lib/arm-linux-gnueabihf/libpthread.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so
/home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo: tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/bill_ros/bill_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo"
	cd /home/ubuntu/bill_ros/bill_ws/build/tufts_service_robots/tbot2_examples/tbot2_roamer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/roamer_demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/build: /home/ubuntu/bill_ros/bill_ws/devel/lib/tbot2_roamer/roamer_demo

.PHONY : tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/build

tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/requires: tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/src/roamer_demo.cpp.o.requires

.PHONY : tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/requires

tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/clean:
	cd /home/ubuntu/bill_ros/bill_ws/build/tufts_service_robots/tbot2_examples/tbot2_roamer && $(CMAKE_COMMAND) -P CMakeFiles/roamer_demo.dir/cmake_clean.cmake
.PHONY : tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/clean

tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/depend:
	cd /home/ubuntu/bill_ros/bill_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/bill_ros/bill_ws/src /home/ubuntu/bill_ros/bill_ws/src/tufts_service_robots/tbot2_examples/tbot2_roamer /home/ubuntu/bill_ros/bill_ws/build /home/ubuntu/bill_ros/bill_ws/build/tufts_service_robots/tbot2_examples/tbot2_roamer /home/ubuntu/bill_ros/bill_ws/build/tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tufts_service_robots/tbot2_examples/tbot2_roamer/CMakeFiles/roamer_demo.dir/depend

