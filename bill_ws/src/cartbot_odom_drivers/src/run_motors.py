#!/usr/bin/env python

'''
run_motors.py

Sends motor velocities to each wheel to run them
Subscribes to topics /l_motor_cmd and r_motor_cmd

'''

import rospy
import odrive
from odrive.enums import *

from std_msgs.msg import Float32

class Run_motors():

	def __init__(self):
		rospy.init_node('run_motors')
		nodename = rospy.get_name()
		rospy.loginfo("%s started" % nodename)

		self.my_drive = odrive.find_any()
		print("odrive found")
		self.my_drive.axis0.requested_state = AXIS_STATE_CLOSED_LOOP_CONTROL
		self.my_drive.axis1.requested_state = AXIS_STATE_CLOSED_LOOP_CONTROL

		self.l_wheel_sub = rospy.Subscriber('l_wheel_vtarget', Float32,self.l_wheel_callback)
		self.r_wheel_sub = rospy.Subscriber('r_wheel_vtarget', Float32,self.r_wheel_callback)
		rospy.spin()


	def l_wheel_callback(self,data):
		speed = data.data
		speed = -1*speed
		self.my_drive.axis1.controller.vel_setpoint = speed


	def r_wheel_callback(self,data):
		speed = data.data
		self.my_drive.axis0.controller.vel_setpoint = speed


if __name__=='__main__':
	try:
		motors = Run_motors()

	except rospy.ROSInterruptException:
		pass