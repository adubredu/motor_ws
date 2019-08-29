#include <math.h>
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <ros/ros.h>

#include <tf/transform_datatypes.h>
#include <tf/transform_broadcaster.h>
#include <std_msgs/Float32.h>
#include <nav_msgs/Path.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/Joy.h>

using namespace std;

const double PI = 3.1415926;

double sensorOffsetX = 0;
double sensorOffsetY = 0;
bool twoWayDrive = true;
double lookAheadDis = 0.5;
double yawRateGain = 7.5;
double stopYawRateGain = 7.5;
double maxYawRate = 0.8;
double maxSpeed = 1.0;
double maxAccel = 1.0;
double switchTimeThre = 1.0;
double dirDiffThre = 0.1;
double stopDisThre = 0.2;
double slowDwnDisThre = 1.0;
bool autonomyMode = false;
double autonomySpeed = 1.0;
double joyToSpeedDelay = 5.0;

float joySpeed = 0;
float joyYaw = 0;

float vehicleX = 0;
float vehicleY = 0;
float vehicleZ = 0.5;
float vehicleRoll = 0;
float vehiclePitch = 0;
float vehicleYaw = 0;

float vehicleXRec = 0;
float vehicleYRec = 0;
float vehicleZRec = 0.5;
float vehicleRollRec = 0;
float vehiclePitchRec = 0;
float vehicleYawRec = 0;

float vehicleYawRate = 0;
float vehicleSpeed = 0;

double odomTime = 0;
double joyTime = 0;
int pathPointID = 0;
int pathInit = false;
bool navFwd = true;
double switchTime = 0;
double real_speed = 1.0;

nav_msgs::Path path;

void odomHandler(const nav_msgs::Odometry::ConstPtr& odomIn)
{
  odomTime = odomIn->header.stamp.toSec();

  double roll, pitch, yaw;
  geometry_msgs::Quaternion geoQuat = odomIn->pose.pose.orientation;
  tf::Matrix3x3(tf::Quaternion(geoQuat.x, geoQuat.y, geoQuat.z, geoQuat.w)).getRPY(roll, pitch, yaw);

  vehicleRoll = roll;
  vehiclePitch = pitch;
  vehicleYaw = yaw;
  vehicleX = odomIn->pose.pose.position.x - cos(yaw) * sensorOffsetX + sin(yaw) * sensorOffsetY;
  vehicleY = odomIn->pose.pose.position.y - sin(yaw) * sensorOffsetX - cos(yaw) * sensorOffsetY;
  vehicleZ = odomIn->pose.pose.position.z;
}


void joystickHandler(const sensor_msgs::Joy::ConstPtr& joy)
{
  joySpeed = sqrt(pow(joy->axes[4],2) + pow(joy->axes[5],2));
    if (joy->axes[5] == 0) joySpeed = 0;
    if (joy->axes[5] < 0) joySpeed*=-1;
  joyYaw = joy->axes[4];
}



int main(int argc, char** argv)
{
  ros::init(argc, argv, "pathFollower");
  ros::NodeHandle nh;

  ros::Subscriber subOdom = nh.subscribe<nav_msgs::Odometry> ("/state_estimation", 5, odomHandler);
  ros::Subscriber subJoystick = nh.subscribe<sensor_msgs::Joy> ("/joy", 5, joystickHandler);
  ros::Publisher pubSpeed = nh.advertise<geometry_msgs::Twist>("/cmd_vel",5);
  geometry_msgs::Twist cmd_spd;

  ros::Rate rate(100);
  bool status = ros::ok();

  while(status)
  {
  	ros::spinOnce();
  	float pathDir = joyYaw; //or atan2(disY,disX) to waypoint
  	float dirDiff = vehicleYaw - pathDir;

  	if (dirDiff > PI) dirDiff -= 2*PI;
  	else if (dirDiff < -PI) dirDiff += 2*PI;

  	float joySpeed2 = maxSpeed * joySpeed;
	
	if (autonomyMode)
	{
  		vehicleYawRate = dirDiff;
  		if (vehicleYawRate > maxYawRate) vehicleYawRate = maxYawRate;
		else if (vehicleYawRate < -maxYawRate) vehicleYawRate = -maxYawRate;
	}
	else
	{
		vehicleYawRate = joyYaw;
	}

	

     if (joySpeed != 0)
     {
	     if (vehicleSpeed < joySpeed2) vehicleSpeed += maxAccel / 100.0;
	     else if (vehicleSpeed > joySpeed2) vehicleSpeed -= maxAccel / 100.0;
 	 }

 	 else if (joySpeed == 0)
 	 {
 	 	 vehicleSpeed= 0;
 	 }
	
	if (joyYaw == 0)
		vehicleYawRate = 0;

 	 cmd_spd.linear.x = vehicleSpeed;
 	 cmd_spd.angular.z = vehicleYawRate;
 	 pubSpeed.publish(cmd_spd);

 	 status = ros::ok();
 	 rate.sleep();
 	}

 	return 0;
 }



