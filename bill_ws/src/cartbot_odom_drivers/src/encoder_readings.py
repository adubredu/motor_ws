#! /usr/bin/env python

import odrive
from odrive.enums import *
import time

my_drive = odrive.find_any()
print("found")
my_drive.axis1.requested_state = AXIS_STATE_CLOSED_LOOP_CONTROL

# while True:
# 	my_drive.axis1.controller.vel_setpoint = -200
# 	print(my_drive.axis1.encoder.pos_estimate)
# 	time.sleep(1)

my_drive.axis1.controller.vel_setpoint = 0