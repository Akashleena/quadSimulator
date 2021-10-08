/* © Copyright Newspace Research and Technologies. All rights reserved. This software is released for in-house testing at NRT.
 * Any permission to use it shall be granted in writing. Requests shall be addressed to Core Autonomy Team at Newspace Research and Technologies
 *
 * Author: Akashleena Sarkar
 * Email: akashleena.s@newspace.co.in
 *==================================================================================================
*/

#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include<mavros_msgs/CommandTOL.h>
#include<mavros_msgs/CommandBool.h>


mavros_msgs::State current_state;
void state_cb(const mavros_msgs::State::ConstPtr& msg){
    current_state = *msg;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "offb_node");
    ros::NodeHandle nh;

    ros::Subscriber state_sub = nh.subscribe<mavros_msgs::State>
            ("mavros/state", 10, state_cb);
    ros::Publisher local_pos_pub = nh.advertise<geometry_msgs::PoseStamped>
            ("mavros/setpoint_position/local", 10);
    ros::ServiceClient arming_client = nh.serviceClient<mavros_msgs::CommandBool>
            ("mavros/cmd/arming");
    ros::ServiceClient set_mode_client = nh.serviceClient<mavros_msgs::SetMode>
            ("mavros/set_mode");

    //the setpoint publishing rate MUST be faster than 2Hz
    ros::Rate rate(20.0);

    // wait for FCU connection
    while(ros::ok() && !current_state.connected){
        ros::spinOnce();
        rate.sleep();
    }

    geometry_msgs::PoseStamped pose;
    pose.pose.position.x = 0;
    pose.pose.position.y = 0;
    pose.pose.position.z = 2;

    //send a few setpoints before starting
    for(int i = 100; ros::ok() && i > 0; --i){
        local_pos_pub.publish(pose);
        ros::spinOnce();
        rate.sleep();
    }

    mavros_msgs::SetMode offb_set_mode;
    offb_set_mode.request.custom_mode = "OFFBOARD";
    //arming
    mavros_msgs::CommandBool arm_cmd;
    arm_cmd.request.value = true;
    if(arming_client.call(arm_cmd) && arm_cmd.response.success)
        ROS_INFO("ARM sent %d", arm_cmd.response.success);
    else 
    {
        ROS_ERROR("Failed arming");
        return -1;
    } 
    ros::Time last_request = ros::Time::now();
    //request takeoff
    
  ros::ServiceClient takeoff_cl = nh.serviceClient<mavros_msgs::CommandTOL>("/mavros/cmd/takeoff");
  mavros_msgs::CommandTOL srv_takeoff;
  srv_takeoff.request.altitude = 1.5;
  if(takeoff_cl.call(srv_takeoff))
  {
    ROS_INFO("takeoff sent %d", srv_takeoff.response.success);
  }
  else{
    ROS_ERROR("Failed Takeoff");
    return -1;
  }


    while(ros::ok()){
        if( current_state.mode != "GUIDED" &&
            (ros::Time::now() - last_request > ros::Duration(5.0))){
            if( set_mode_client.call(offb_set_mode) &&
                offb_set_mode.response.mode_sent){
                ROS_INFO("Guided enabled");
            }
            last_request = ros::Time::now();
        } else {
            if( !current_state.armed && current_state.mode == "GUIDED" &&
                (ros::Time::now() - last_request > ros::Duration(5.0))){
                if( arming_client.call(arm_cmd) &&
                    arm_cmd.response.success){
                    ROS_INFO("Vehicle armed");
                }
                last_request = ros::Time::now();
            }
        }

        local_pos_pub.publish(pose);

        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}
