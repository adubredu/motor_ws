execute_process(COMMAND "/home/ubuntu/bill_ros/bill_ws/build/tufts_service_robots/tbot2_logging/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ubuntu/bill_ros/bill_ws/build/tufts_service_robots/tbot2_logging/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
