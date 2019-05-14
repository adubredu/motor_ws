#!/usr/bin/env python
"""
   twist_to_motors - converts a twist message to motor commands.  Needed for navigation stack
   
   
    Copyright (C) 2012 Jon Stephan. 
     
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
"""

import rospy
import roslib
from std_msgs.msg import Float32
from std_msgs.msg import Int32
from geometry_msgs.msg import Twist 
import odrive
from odrive.enums import *

#############################################################
#############################################################
class TwistToMotors():
#############################################################
#############################################################

    #############################################################
    def __init__(self):
    #############################################################
        rospy.init_node("twist_to_motors")
        nodename = rospy.get_name()
        rospy.loginfo("%s started" % nodename)
    
        self.w = rospy.get_param("~base_width", 0.66)
    
        # self.pub_lmotor = rospy.Publisher('l_wheel_vtarget', Float32, queue_size=10)
        # self.pub_rmotor = rospy.Publisher('r_wheel_vtarget', Float32, queue_size=10)
        rospy.Subscriber('cmd_vel', Twist, self.twistCallback)
        
        self.my_drive = odrive.find_any()
        print("odrive found")
        self.my_drive.axis0.requested_state = AXIS_STATE_CLOSED_LOOP_CONTROL
        self.my_drive.axis1.requested_state = AXIS_STATE_CLOSED_LOOP_CONTROL
	self.l_wheel_pub = rospy.Publisher('l_wheel_enc', Int32, queue_size=10)
	self.r_wheel_pub = rospy.Publisher('r_wheel_enc', Int32, queue_size=10)
    
        self.rate = rospy.get_param("~rate", 50)
        self.timeout_ticks = rospy.get_param("~timeout_ticks", 2)
        self.left = 0
        self.right = 0
        
    #############################################################
    def spin(self):
    #############################################################
    
        r = rospy.Rate(self.rate)
        idle = rospy.Rate(50)
        then = rospy.Time.now()
        self.ticks_since_target = self.timeout_ticks
    
        ###### main loop  ######
        while not rospy.is_shutdown():
	    rwheel = Int32()
	    lwheel = Int32()
	    rwheel.data = self.my_drive.axis0.encoder.pos_estimate
	    lwheel.data = self.my_drive.axis1.encoder.pos_estimate*-1
	    self.l_wheel_pub.publish(lwheel)
	    self.r_wheel_pub.publish(rwheel)

        
            while not rospy.is_shutdown() and self.ticks_since_target < self.timeout_ticks:
                self.spinOnce()
                r.sleep()
            idle.sleep()
                
    #############################################################
    def spinOnce(self):
    #############################################################
    
        # dx = (l + r) / 2
        # dr = (r - l) / w
        '''    
        self.right = 1.0 * self.dx + self.dr * self.w / 2 
        self.left = 1.0 * self.dx - self.dr * self.w / 2
        # rospy.loginfo("publishing: (%d, %d)", left, right) 
        self.right = self.right*20
        self.left = self.left*20
	#print(self.left)
	'''
	if self.dr == 0 and self.dx == 0:
		self.my_drive.axis1.controller.vel_setpoint = 0
        	self.my_drive.axis0.controller.vel_setpoint = 0
	if self.dr < 0 and self.dx == 0:
		self.my_drive.axis1.controller.vel_setpoint = -10
        	self.my_drive.axis0.controller.vel_setpoint = -10

	elif self.dr > 0 and self.dx == 0:
		self.my_drive.axis1.controller.vel_setpoint = 10
        	self.my_drive.axis0.controller.vel_setpoint = 10

	elif self.dx > 0 and self.dr == 0:
		self.my_drive.axis1.controller.vel_setpoint = -40
        	self.my_drive.axis0.controller.vel_setpoint = 40
	elif self.dx < 0 and self.dr == 0:
		self.my_drive.axis1.controller.vel_setpoint = 40
        	self.my_drive.axis0.controller.vel_setpoint = -40



	###############
	elif self.dr < 0 and self.dx > 0:
                self.my_drive.axis1.controller.vel_setpoint = -60
                self.my_drive.axis0.controller.vel_setpoint = 45

        elif self.dr > 0 and self.dx < 0:
                self.my_drive.axis1.controller.vel_setpoint = 45
                self.my_drive.axis0.controller.vel_setpoint = -60

        elif self.dx > 0 and self.dr > 0:
                self.my_drive.axis1.controller.vel_setpoint = -45
                self.my_drive.axis0.controller.vel_setpoint = 60
        elif self.dx < 0 and self.dr < 0:
                self.my_drive.axis1.controller.vel_setpoint = 60
                self.my_drive.axis0.controller.vel_setpoint = -45


       	
	'''self.my_drive.axis1.controller.vel_setpoint = self.left*-1
        self.my_drive.axis0.controller.vel_setpoint = self.right
	'''

        # self.pub_lmotor.publish(self.left)
        # self.pub_rmotor.publish(self.right)
            
        self.ticks_since_target += 1

    #############################################################
    def twistCallback(self,msg):
    #############################################################
        # rospy.loginfo("-D- twistCallback: %s" % str(msg))
        self.ticks_since_target = 0
        self.dx = msg.linear.x
        self.dr = -1*msg.angular.z
        self.dy = msg.linear.y
    
#############################################################
#############################################################
if __name__ == '__main__':
    """ main """
    try:
        twistToMotors = TwistToMotors()
        twistToMotors.spin()
    except rospy.ROSInterruptException:
        pass
