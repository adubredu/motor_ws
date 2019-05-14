# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "poi_scan: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ipoi_scan:/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(poi_scan_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionFeedback.msg" NAME_WE)
add_custom_target(_poi_scan_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "poi_scan" "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionFeedback.msg" "poi_scan/PoiScanFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionResult.msg" NAME_WE)
add_custom_target(_poi_scan_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "poi_scan" "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionResult.msg" "poi_scan/PoiScanResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg" NAME_WE)
add_custom_target(_poi_scan_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "poi_scan" "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg" ""
)

get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg" NAME_WE)
add_custom_target(_poi_scan_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "poi_scan" "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg" ""
)

get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionGoal.msg" NAME_WE)
add_custom_target(_poi_scan_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "poi_scan" "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionGoal.msg" "poi_scan/PoiScanGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg" NAME_WE)
add_custom_target(_poi_scan_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "poi_scan" "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg" ""
)

get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanAction.msg" NAME_WE)
add_custom_target(_poi_scan_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "poi_scan" "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanAction.msg" "poi_scan/PoiScanActionGoal:poi_scan/PoiScanGoal:std_msgs/Header:poi_scan/PoiScanResult:poi_scan/PoiScanActionResult:poi_scan/PoiScanActionFeedback:poi_scan/PoiScanFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/poi_scan
)
_generate_msg_cpp(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/poi_scan
)
_generate_msg_cpp(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/poi_scan
)
_generate_msg_cpp(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/poi_scan
)
_generate_msg_cpp(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/poi_scan
)
_generate_msg_cpp(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/poi_scan
)
_generate_msg_cpp(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionGoal.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionResult.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionFeedback.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/poi_scan
)

### Generating Services

### Generating Module File
_generate_module_cpp(poi_scan
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/poi_scan
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(poi_scan_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(poi_scan_generate_messages poi_scan_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionFeedback.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_cpp _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionResult.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_cpp _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_cpp _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_cpp _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionGoal.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_cpp _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_cpp _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanAction.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_cpp _poi_scan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(poi_scan_gencpp)
add_dependencies(poi_scan_gencpp poi_scan_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS poi_scan_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/poi_scan
)
_generate_msg_eus(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/poi_scan
)
_generate_msg_eus(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/poi_scan
)
_generate_msg_eus(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/poi_scan
)
_generate_msg_eus(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/poi_scan
)
_generate_msg_eus(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/poi_scan
)
_generate_msg_eus(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionGoal.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionResult.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionFeedback.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/poi_scan
)

### Generating Services

### Generating Module File
_generate_module_eus(poi_scan
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/poi_scan
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(poi_scan_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(poi_scan_generate_messages poi_scan_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionFeedback.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_eus _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionResult.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_eus _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_eus _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_eus _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionGoal.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_eus _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_eus _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanAction.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_eus _poi_scan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(poi_scan_geneus)
add_dependencies(poi_scan_geneus poi_scan_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS poi_scan_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/poi_scan
)
_generate_msg_lisp(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/poi_scan
)
_generate_msg_lisp(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/poi_scan
)
_generate_msg_lisp(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/poi_scan
)
_generate_msg_lisp(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/poi_scan
)
_generate_msg_lisp(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/poi_scan
)
_generate_msg_lisp(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionGoal.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionResult.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionFeedback.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/poi_scan
)

### Generating Services

### Generating Module File
_generate_module_lisp(poi_scan
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/poi_scan
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(poi_scan_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(poi_scan_generate_messages poi_scan_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionFeedback.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_lisp _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionResult.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_lisp _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_lisp _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_lisp _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionGoal.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_lisp _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_lisp _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanAction.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_lisp _poi_scan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(poi_scan_genlisp)
add_dependencies(poi_scan_genlisp poi_scan_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS poi_scan_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/poi_scan
)
_generate_msg_nodejs(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/poi_scan
)
_generate_msg_nodejs(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/poi_scan
)
_generate_msg_nodejs(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/poi_scan
)
_generate_msg_nodejs(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/poi_scan
)
_generate_msg_nodejs(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/poi_scan
)
_generate_msg_nodejs(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionGoal.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionResult.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionFeedback.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/poi_scan
)

### Generating Services

### Generating Module File
_generate_module_nodejs(poi_scan
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/poi_scan
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(poi_scan_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(poi_scan_generate_messages poi_scan_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionFeedback.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_nodejs _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionResult.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_nodejs _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_nodejs _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_nodejs _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionGoal.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_nodejs _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_nodejs _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanAction.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_nodejs _poi_scan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(poi_scan_gennodejs)
add_dependencies(poi_scan_gennodejs poi_scan_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS poi_scan_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/poi_scan
)
_generate_msg_py(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/poi_scan
)
_generate_msg_py(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/poi_scan
)
_generate_msg_py(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/poi_scan
)
_generate_msg_py(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/poi_scan
)
_generate_msg_py(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/poi_scan
)
_generate_msg_py(poi_scan
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionGoal.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionResult.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionFeedback.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/poi_scan
)

### Generating Services

### Generating Module File
_generate_module_py(poi_scan
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/poi_scan
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(poi_scan_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(poi_scan_generate_messages poi_scan_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionFeedback.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_py _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionResult.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_py _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanGoal.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_py _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanFeedback.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_py _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanActionGoal.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_py _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanResult.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_py _poi_scan_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/poi_scan/msg/PoiScanAction.msg" NAME_WE)
add_dependencies(poi_scan_generate_messages_py _poi_scan_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(poi_scan_genpy)
add_dependencies(poi_scan_genpy poi_scan_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS poi_scan_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/poi_scan)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/poi_scan
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(poi_scan_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/poi_scan)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/poi_scan
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(poi_scan_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/poi_scan)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/poi_scan
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(poi_scan_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/poi_scan)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/poi_scan
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(poi_scan_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/poi_scan)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/poi_scan\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/poi_scan
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(poi_scan_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
