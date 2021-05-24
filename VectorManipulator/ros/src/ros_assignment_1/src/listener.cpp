#include "ros/ros.h"
#include "ros_assignment_1/VectorOutput.h"
#include <string>

void chatterCallback(const ros_assignment_1::VectorOutput::ConstPtr& msg){
  ROS_INFO("Transformed vector: x=[%f], y=[%f], z=[%f]", msg->x, msg->y, msg->z);
}

int main(int argc, char **argv){
   ros::init(argc, argv, "listener");
   ros::NodeHandle n;
   ros::Subscriber sub = n.subscribe("vector", 1000, chatterCallback);
   ros::spin();
   return 0;
}
