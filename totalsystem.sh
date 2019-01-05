#! /bin/bash
# install ros and robotis dependencies script

sudo apt-get update
echo "update"
sudo apt-get upgrade
echo "upgrade"
wget https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/install_ros_kinetic.sh && chmod 755 ./install_ros_kinetic.sh && bash ./install_ros_kinetic.sh
echo "ros done"
sudo apt-get install ros-kinetic-ros-controllers ros-kinetic-gazebo* ros-kinetic-moveit* ros-kinetic-industrial-core

echo "ros dependencies. need to be done : copy and paster robotis folders in data partition into catkin_ws/src. And then catkin_make in catkin_ws folder."

echo "should run belwo code==================================================
git clone https://github.com/ROBOTIS-GIT/DynamixelSDK.git
git clone https://github.com/ROBOTIS-GIT/dynamixel-workbench.git
git clone https://github.com/ROBOTIS-GIT/dynamixel-workbench-msgs.git
git clone https://github.com/ROBOTIS-GIT/robotis_manipulator.git
git clone https://github.com/ROBOTIS-GIT/open_manipulator.git
git clone https://github.com/ROBOTIS-GIT/open_manipulator_msgs.git
git clone https://github.com/ROBOTIS-GIT/open_manipulator_simulations.git

cd ~/catkin_ws && catkin_make "

#should be reboot, after reboot ros will run
#sudo reboot

#==========================================================================================
#install arduino IDE

echo "start install program>>>>>>>>>>>>>>>>>>>>>> "
echo "1.arduion IDE.  2.codeblocks 3.ros kinetic and robotis openmanipualtor package"
 
wget https://raw.githubusercontent.com/ROBOTIS-GIT/OpenCR/master/99-opencr-cdc.rules

sudo cp ./99-opencr-cdc.rules /etc/udev/rules.d/

sudo udevadm control --reload-rules

sudo udevadm trigger

sudo apt-get install libncurses5-dev:i386

cd ~/arduino-1.8.8

echo "install arduino 1.8.8>>>>>>>>>>>>>>>>>>>>>>"

sudo ./install.sh

export PATH=$PATH:$HOME/arduino-1.8.8

source ~/.bashrc

# following http://emanual.robotis.com/docs/en/parts/controller/opencr10/ site.

#===========================================================================================
# install codeblocks in ubuntu enrironment

echo "install codeblocks>>>>>>>>>>>>>>>>>>>>>>"

sudo apt-get install codeblocks

echo "start install compiler of codeblock>>>>>>>>>>>>>>>>>>>>>>"

#install concerned compiler with GNU gcc
sudo apt-get install mingw-w64

sudo apt-get install g++

sudo apt-get install gcc

sudo apt-get install gpp
#===========================================================================================













