/* © Copyright HoloSuit Pte Ltd. All rights reserved. This software is released as a submission to Robotics Software Engineer post
 *  Any permission to use it shall be granted in writing. Requests shall be addressed to Akasheena in akash13leena@gmail.com
 *
 * Author: Akashleena Sarkar
 *
 *==================================================================================================
*/

#include <ros/ros.h>
#include <gnc_functions.hpp>
#include <sensor_msgs/LaserScan.h>

void scan_cb(const sensor_msgs::LaserScan::ConstPtr& msg)
{
    sensor_msgs::LaserScan current_2D_scan;
    current_2D_scan=*msg;
    float avoidance_vector_x=0;
    float avoidance_vector_y=0;
    bool avoid = false;

for(int i=1; i<current_2D_scan.ranges.size(); i++)
{
	float d0 = 3; 
	float k = 0.5;

	if(current_2D_scan.ranges[i] < d0 && current_2D_scan.ranges[i] > .35)
	{
		avoid = true;
	    float x = cos(current_2D_scan.angle_increment*i);
			float y = sin(current_2D_scan.angle_increment*i);
			float U = -.5*k*pow(((1/current_2D_scan.ranges[i]) - (1/d0)), 2);	

			avoidance_vector_x = avoidance_vector_x + x*U;
			avoidance_vector_y = avoidance_vector_y + y*U;

	}
}
	float current_heading = get_current_heading();
	float deg2rad = (M_PI/180);
	avoidance_vector_x = avoidance_vector_x*cos((current_heading)*deg2rad) - avoidance_vector_y*sin((current_heading)*deg2rad);
	avoidance_vector_y = avoidance_vector_x*sin((current_heading)*deg2rad) + avoidance_vector_y*cos((current_heading)*deg2rad);

	if(avoid)
	{
		if( sqrt(pow(avoidance_vector_x,2) + pow(avoidance_vector_y,2)) > 3)
		{
			avoidance_vector_x = 3 * (avoidance_vector_x/sqrt(pow(avoidance_vector_x,2) + pow(avoidance_vector_y,2)));
			avoidance_vector_y = 3 * (avoidance_vector_y/sqrt(pow(avoidance_vector_x,2) + pow(avoidance_vector_y,2)));
		}
		geometry_msgs::Point current_pos;
		current_pos = get_current_location();
		set_destination(avoidance_vector_x + current_pos.x, avoidance_vector_y + current_pos.y, 2, 0);	
	}	
}



int main(int argc, char **argv)
{
	//initialize ros 
	ros::init(argc, argv, "lidar_avoidance");
	ros::NodeHandle n;
    ros::Subscriber collision_sub = n.subscribe<sensor_msgs::LaserScan>("/iris/laser/scan", 1, scan_cb);
	//add rest of code here 
    //initialize control publisher/subscribers
    init_publisher_subscriber(n);

   // wait for FCU connection
   //wait4connect();

    //wait for user to switch to mode GUIDED
    //wait4start();

    //create local reference frame 
    initialize_local_frame();

    //request takeoff
    takeoff(2);

    set_destination(10,50,30,0);

    ros::Rate rate(2.0);
    int counter = 0;
    while(ros::ok())
    {
	
	ros::spinOnce();
	rate.sleep();
	
    }

	return 0;
}
