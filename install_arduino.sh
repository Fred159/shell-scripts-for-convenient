#! /bin/bash
#install arduino IDE

wget https://raw.githubusercontent.com/ROBOTIS-GIT/OpenCR/master/99-opencr-cdc.rules
sudo cp ./99-opencr-cdc.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules
sudo udevadm trigger
sudo apt-get install libncurses5-dev:i386
cd ~/tools/arduino-1.8.8
./install.sh

#need to be done 
# gedit ~/.bashrc
#$ export PATH=$PATH:$HOME/tools/arduino-1.6.4
#$ source ~/.bashrc
#arduino
# following http://emanual.robotis.com/docs/en/parts/controller/opencr10/ site.
