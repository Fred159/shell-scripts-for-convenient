#! /bin/bash

sudo apt-get install ros-kinetic-ros-controllers ros-kinetic-gazebo* ros-kinetic-moveit* ros-kinetic-dynamixel-sdk ros-kinetic-dynamixel-workbench-toolbox ros-kinetic-ar-track-alvar ros-kinetic-ar-track-alvar-msgs ros-kinet

cd ~/catkin_ws/src/
git clone https://github.com/ROBOTIS-GIT/open_manipulator.git
git clone https://github.com/ROBOTIS-GIT/open_manipulator_msgs.git
git clone https://github.com/ROBOTIS-GIT/open_manipulator_perceptions.git
git clone https://github.com/ROBOTIS-GIT/open_manipulator_with_tb3.git
git clone https://github.com/ROBOTIS-GIT/open_manipulator_with_tb3_msgs.git
git clone https://github.com/ROBOTIS-GIT/open_manipulator_with_tb3_simulations.git
git clone https://github.com/ROBOTIS-GIT/turtlebot3.git
cd ~/catkin_ws && catkin_make

