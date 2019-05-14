#!/usr/bin/env python

'''
publish_encoder.py

Publishes the number of ticks of the encoders in each wheel

'''

import rospy
import odrive
from odrive.enums import *

from std_msgs.msg import Int32


class Encoder():

	def __init__(self):
		rospy.init_node('encoder_ticks')
		self.nodename = rospy.get_name()
		rospy.loginfo("%s started" % self.nodename)

		self.l_wheel_pub = rospy.Publisher('l_wheel_enc', Int32, queue_size=10)
		self.r_wheel_pub = rospy.Publisher('r_wheel_enc', Int32, queue_size=10)
		self.rate = rospy.Rate(30)

		self.my_drive = odrive.find_any()
		rospy.loginfo("odrive found")
		self.my_drive.axis0.requested_state = AXIS_STATE_CLOSED_LOOP_CONTROL
		self.my_drive.axis1.requested_state = AXIS_STATE_CLOSED_LOOP_CONTROL

	def publish_ticks(self):
		while not rospy.is_shutdown():
			rwheel = Int32()
			lwheel = Int32()
			rwheel.data = self.my_drive.axis0.encoder.pos_estimate
			lwheel.data = self.my_drive.axis1.encoder.pos_estimate
			self.l_wheel_pub.publish(lwheel)
			self.r_wheel_pub.publish(rwheel)
			self.rate.sleep()


if __name__=='__main__':
	try:
		encoder = Encoder()
		encoder.publish_ticks()
	except rospy.ROSInterruptException:
		pass