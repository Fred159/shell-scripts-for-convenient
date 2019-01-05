#!/bin/bash
# install ros and robotis dependencies script

sudo apt-get update
echo "update"
sudo apt-get upgrade
echo "upgrade"
wget https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/install_ros_kinetic.sh && chmod 755 ./install_ros_kinetic.sh && bash ./install_ros_kinetic.sh
echo "ros done"
sudo apt-get install ros-kinetic-ros-controllers ros-kinetic-gazebo* ros-kinetic-moveit* ros-kinetic-industrial-core

echo "ros dependencies. need to be done : copy and paster robotis folders in data partition into catkin_ws/src. And then catkin_make in catkin_ws folder."

