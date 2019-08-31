#include <ros/ros.h>
#include <math.h>
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <tf/transform_datatypes.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>

#include <nav_msgs/Odometry.h>
#include <geometry_msgs/PointStamped.h>
#include <geometry_msgs/PoseArray.h>
#include <sensor_msgs/PointCloud2.h>

#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/filters/voxel_grid.h>
#include <pcl/kdtree/kdtree_flann.h>

using namespace std;

const double PI = 3.1415926;

double odomTime = 0, robotRoll = 0, robotPitch = 0, robotYaw = 0;
double robotX = 0, robotY = 0, robotZ = 0;
double goalX = 0, goalY = 0;
const int num_paths = 19;
int occupancy[num_paths]; double arrayX[num_paths]; double arrayY[num_paths]; double score[num_paths];
double occX[num_paths]; double occY[num_paths];
double range = 1.0;
ros::Publisher pubPoint;
ros::Publisher pubAltPath;
ros::Publisher pubAltWaypoints;

pcl::PointCloud<pcl::PointXYZI>::Ptr waypoints(new pcl::PointCloud<pcl::PointXYZI>());
pcl::PointCloud<pcl::PointXYZI>::Ptr laserCloud(new pcl::PointCloud<pcl::PointXYZI>());



void odomHandler(const nav_msgs::Odometry::ConstPtr& odomIn)
{
  odomTime = odomIn->header.stamp.toSec();

  double roll, pitch, yaw;
  geometry_msgs::Quaternion geoQuat = odomIn->pose.pose.orientation;
  tf::Matrix3x3(tf::Quaternion(geoQuat.x, geoQuat.y, geoQuat.z, geoQuat.w)).getRPY(roll, pitch, yaw);

  robotRoll = roll;
  robotPitch = pitch;
  robotYaw = yaw;
  robotX = odomIn->pose.pose.position.x;
  robotY = odomIn->pose.pose.position.y;
  robotZ = odomIn->pose.pose.position.z;
}


void laserCloudHandler(const sensor_msgs::PointCloud2ConstPtr& laserCloud2)
{
	laserCloud->clear();
	pcl::fromROSMsg(*laserCloud2, *laserCloud);
}

void waypointHandler(const geometry_msgs::PointStamped::ConstPtr& goal)
{
  goalX = goal->point.x;
  goalY = goal->point.y;
}


void check_for_occupancy()
{
	double sinYaw = sin(robotYaw);
	double cosYaw = cos(robotYaw);
	int size = laserCloud->points.size();
	pcl::PointXYZI point;
	for (int i=0; i<size; i++)
	{
		point = laserCloud->points[i];
		double x = point.x - robotX; double y = point.y - robotY;

		double rx = x * cosYaw + y * sinYaw;
		double ry = -x * sinYaw + y * cosYaw;

		double dist = sqrt(pow(rx,2) + pow(ry,2));

		if (dist < range)
		{
			int ang = atan2(rx,ry)*(180/PI);
			if (ang < 0) ang =+ 180;
			if (ang > 180) ang -= 180;
			// occupancy[ang/10] = 1;
			for (int j = (ang/10)-2; j<=(ang/10)+2; j++)
				occupancy[j] = 1;
		}
	}
}

void initialize_occupancy()
{
	for (int i=0; i<num_paths; i++)
		occupancy[i] = 0;
}
void initialize_arrays()
{
	for (int i=0; i<num_paths; i++)
	{
		occupancy[i] = 0;
		arrayX[i] = 0.0;
		arrayY[i] = 0.0;
		score[i] = 0.0;
		occX[i] = 0.0;
		occY[i] = 0.0;

	}
}


void display_alternate_paths()
{
	double sinYaw = sin(robotYaw);
	double cosYaw = cos(robotYaw);

	geometry_msgs::PoseArray paths;
	paths.header.frame_id = "map";
	paths.poses.resize(num_paths);

	waypoints->clear();


	for (int i=0; i<num_paths; i++)
	{
		if (occupancy[i] == 0)
		{
			paths.poses[i].position.x = robotX;
			paths.poses[i].position.y = robotY;
			double rx = arrayX[i] * cosYaw - arrayY[i] * sinYaw;
			double ry = arrayX[i] * sinYaw + arrayY[i] * cosYaw;
			double ang = atan(arrayY[i]/arrayX[i]);// atan((ry)/(rx));

			ang += robotYaw;
			if (ang > PI) ang -= 2*PI;
      		else if (ang < -PI) ang += 2*PI;

			tf2::Quaternion quat;
			quat.setRPY(0,0, ang);//(i*PI)/180);
			geometry_msgs::Quaternion q = tf2::toMsg(quat);
			paths.poses[i].orientation = q;

			occX[i] = rx + robotX;
			occY[i] = ry + robotY;
			pcl::PointXYZI point;
			point.x = occX[i]; point.y = occY[i];
			waypoints->push_back(point);

		}

	}
	pubAltPath.publish(paths);
	sensor_msgs::PointCloud2 wp;
	pcl::toROSMsg(*waypoints, wp);
	wp.header.frame_id = "map";
	pubAltWaypoints.publish(wp);

}

void generate_alternate_paths()
{
	for (int i=0; i<=9; i++)
	{
		arrayX[i] = range * sin((i*10)*(PI/180));
		arrayY[i] = range * cos((i*10)*(PI/180));
	}

	for (int i=10; i<=18; i++)
	{
		arrayX[i] = range * sin((i*10)*(PI/180));
		arrayY[i] = range * cos((i*10)*(PI/180));
	}

	

}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "local_planner");
  	ros::NodeHandle nh;

  	ros::Subscriber subOdom = nh.subscribe<nav_msgs::Odometry> ("/state_estimation", 5, odomHandler);
  	ros::Subscriber subGoal = nh.subscribe<geometry_msgs::PointStamped> ("/way_point", 5, waypointHandler);
  	ros::Subscriber subLaserCloud = nh.subscribe<sensor_msgs::PointCloud2>("/added_obstacles", 5, laserCloudHandler);
  	pubPoint = nh.advertise<geometry_msgs::PointStamped>("/local_waypoint",5);
  	pubAltPath = nh.advertise<geometry_msgs::PoseArray>("/alternate_paths",5);
  	pubAltWaypoints = nh.advertise<sensor_msgs::PointCloud2>("/alternate_waypoints",5);

  	initialize_arrays();

  	ros::Rate rate(100);
  	bool status = ros::ok();
  	generate_alternate_paths();

  	while (status)
  	{
  		ros::spinOnce();

  		initialize_occupancy();
  		check_for_occupancy();
  		display_alternate_paths();


  		status = ros::ok();
  		rate.sleep();
  	}

  	ros::spin();
	return 0;
}