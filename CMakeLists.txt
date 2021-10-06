cmake_minimum_required(VERSION 2.8.3)
project(iris_sim)
find_package(catkin REQUIRED COMPONENTS
  gazebo_msgs
  gazebo_ros
  geometry_msgs
  message_generation
  message_runtime
  nav_msgs
  roscpp
  rospy
  rviz
  std_msgs
  std_srvs
  tf
  mavros
  mavros_msgs
)

## Generate messages in the 'msg' folder
 add_message_files(DIRECTORY msg
   FILES
   Progress.msg
   Feedback.msg
 )
## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   gazebo_msgs
   geometry_msgs   
   nav_msgs
   std_msgs
 )
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES iq_gnc
#  CATKIN_DEPENDS mavros std_msgs
#  DEPENDS system_lib
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)
add_executable(irissim src/offb_node.cpp)
target_link_libraries(irissim ${catkin_LIBRARIES})

add_executable(iris_lidar src/lidar_avoidance.cpp)
target_link_libraries(iris_lidar ${catkin_LIBRARIES})