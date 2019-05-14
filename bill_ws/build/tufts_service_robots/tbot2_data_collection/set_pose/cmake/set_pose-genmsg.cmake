# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "set_pose: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iset_pose:/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(set_pose_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg" NAME_WE)
add_custom_target(_set_pose_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "set_pose" "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg" "actionlib_msgs/GoalID:set_pose/SetPoseFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg" NAME_WE)
add_custom_target(_set_pose_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "set_pose" "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg" "std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseWithCovariance:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg" NAME_WE)
add_custom_target(_set_pose_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "set_pose" "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg" ""
)

get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg" NAME_WE)
add_custom_target(_set_pose_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "set_pose" "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg" ""
)

get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg" NAME_WE)
add_custom_target(_set_pose_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "set_pose" "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseWithCovariance:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/Pose:set_pose/SetPoseGoal"
)

get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseAction.msg" NAME_WE)
add_custom_target(_set_pose_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "set_pose" "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseAction.msg" "geometry_msgs/Pose:set_pose/SetPoseActionGoal:std_msgs/Header:geometry_msgs/Quaternion:set_pose/SetPoseActionFeedback:geometry_msgs/Point:set_pose/SetPoseResult:set_pose/SetPoseActionResult:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/PoseWithCovariance:actionlib_msgs/GoalID:set_pose/SetPoseGoal:set_pose/SetPoseFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg" NAME_WE)
add_custom_target(_set_pose_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "set_pose" "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg" "actionlib_msgs/GoalID:set_pose/SetPoseResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/set_pose
)
_generate_msg_cpp(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/set_pose
)
_generate_msg_cpp(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/set_pose
)
_generate_msg_cpp(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/set_pose
)
_generate_msg_cpp(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/set_pose
)
_generate_msg_cpp(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/set_pose
)
_generate_msg_cpp(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/set_pose
)

### Generating Services

### Generating Module File
_generate_module_cpp(set_pose
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/set_pose
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(set_pose_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(set_pose_generate_messages set_pose_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_cpp _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_cpp _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_cpp _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_cpp _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_cpp _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseAction.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_cpp _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_cpp _set_pose_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(set_pose_gencpp)
add_dependencies(set_pose_gencpp set_pose_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS set_pose_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/set_pose
)
_generate_msg_eus(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/set_pose
)
_generate_msg_eus(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/set_pose
)
_generate_msg_eus(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/set_pose
)
_generate_msg_eus(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/set_pose
)
_generate_msg_eus(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/set_pose
)
_generate_msg_eus(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/set_pose
)

### Generating Services

### Generating Module File
_generate_module_eus(set_pose
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/set_pose
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(set_pose_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(set_pose_generate_messages set_pose_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_eus _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_eus _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_eus _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_eus _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_eus _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseAction.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_eus _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_eus _set_pose_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(set_pose_geneus)
add_dependencies(set_pose_geneus set_pose_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS set_pose_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/set_pose
)
_generate_msg_lisp(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/set_pose
)
_generate_msg_lisp(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/set_pose
)
_generate_msg_lisp(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/set_pose
)
_generate_msg_lisp(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/set_pose
)
_generate_msg_lisp(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/set_pose
)
_generate_msg_lisp(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/set_pose
)

### Generating Services

### Generating Module File
_generate_module_lisp(set_pose
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/set_pose
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(set_pose_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(set_pose_generate_messages set_pose_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_lisp _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_lisp _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_lisp _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_lisp _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_lisp _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseAction.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_lisp _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_lisp _set_pose_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(set_pose_genlisp)
add_dependencies(set_pose_genlisp set_pose_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS set_pose_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/set_pose
)
_generate_msg_nodejs(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/set_pose
)
_generate_msg_nodejs(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/set_pose
)
_generate_msg_nodejs(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/set_pose
)
_generate_msg_nodejs(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/set_pose
)
_generate_msg_nodejs(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/set_pose
)
_generate_msg_nodejs(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/set_pose
)

### Generating Services

### Generating Module File
_generate_module_nodejs(set_pose
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/set_pose
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(set_pose_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(set_pose_generate_messages set_pose_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_nodejs _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_nodejs _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_nodejs _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_nodejs _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_nodejs _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseAction.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_nodejs _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_nodejs _set_pose_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(set_pose_gennodejs)
add_dependencies(set_pose_gennodejs set_pose_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS set_pose_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/set_pose
)
_generate_msg_py(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/set_pose
)
_generate_msg_py(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/set_pose
)
_generate_msg_py(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/set_pose
)
_generate_msg_py(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/set_pose
)
_generate_msg_py(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/set_pose
)
_generate_msg_py(set_pose
  "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/set_pose
)

### Generating Services

### Generating Module File
_generate_module_py(set_pose
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/set_pose
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(set_pose_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(set_pose_generate_messages set_pose_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionFeedback.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_py _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseGoal.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_py _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseResult.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_py _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseFeedback.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_py _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionGoal.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_py _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseAction.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_py _set_pose_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/bill_ros/bill_ws/devel/share/set_pose/msg/SetPoseActionResult.msg" NAME_WE)
add_dependencies(set_pose_generate_messages_py _set_pose_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(set_pose_genpy)
add_dependencies(set_pose_genpy set_pose_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS set_pose_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/set_pose)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/set_pose
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(set_pose_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(set_pose_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/set_pose)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/set_pose
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(set_pose_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(set_pose_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/set_pose)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/set_pose
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(set_pose_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(set_pose_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/set_pose)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/set_pose
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(set_pose_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(set_pose_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/set_pose)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/set_pose\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/set_pose
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(set_pose_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(set_pose_generate_messages_py geometry_msgs_generate_messages_py)
endif()
