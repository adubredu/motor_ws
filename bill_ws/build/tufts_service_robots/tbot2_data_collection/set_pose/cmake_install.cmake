# Install script for directory: /home/ubuntu/bill_ros/bill_ws/src/tufts_service_robots/tbot2_data_collection/set_pose

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ubuntu/bill_ros/bill_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/set_pose/action" TYPE FILE FILES "/home/ubuntu/bill_ros/bill_ws/src/tufts_service_robots/tbot2_data_collection/set_pose/action/SetPose.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/set_pose/msg" TYPE FILE FILES
    "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseAction.msg"
    "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg"
    "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg"
    "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg"
    "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg"
    "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg"
    "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/set_pose/cmake" TYPE FILE FILES "/home/ubuntu/bill_ros/bill_ws/build/tufts_service_robots/tbot2_data_collection/set_pose/catkin_generated/installspace/set_pose-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ubuntu/bill_ros/bill_ws/devel/include/set_pose")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ubuntu/bill_ros/bill_ws/devel/share/roseus/ros/set_pose")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ubuntu/bill_ros/bill_ws/devel/share/common-lisp/ros/set_pose")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ubuntu/bill_ros/bill_ws/devel/share/gennodejs/ros/set_pose")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/ubuntu/bill_ros/bill_ws/devel/lib/python2.7/dist-packages/set_pose")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ubuntu/bill_ros/bill_ws/devel/lib/python2.7/dist-packages/set_pose")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/bill_ros/bill_ws/build/tufts_service_robots/tbot2_data_collection/set_pose/catkin_generated/installspace/set_pose.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/set_pose/cmake" TYPE FILE FILES "/home/ubuntu/bill_ros/bill_ws/build/tufts_service_robots/tbot2_data_collection/set_pose/catkin_generated/installspace/set_pose-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/set_pose/cmake" TYPE FILE FILES
    "/home/ubuntu/bill_ros/bill_ws/build/tufts_service_robots/tbot2_data_collection/set_pose/catkin_generated/installspace/set_poseConfig.cmake"
    "/home/ubuntu/bill_ros/bill_ws/build/tufts_service_robots/tbot2_data_collection/set_pose/catkin_generated/installspace/set_poseConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/set_pose" TYPE FILE FILES "/home/ubuntu/bill_ros/bill_ws/src/tufts_service_robots/tbot2_data_collection/set_pose/package.xml")
endif()

