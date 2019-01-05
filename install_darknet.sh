#! /bin/bash
git clone https://github.com/pjreddie/darknet.git



cd darknet

#wget https://pjreddie.com/media/files/yolov3.weights
wget https://pjreddie.com/media/files/yolov3-tiny.weights

make

./darknet

./darknet detect cfg/yolov3-tiny.cfg yolov3-tiny.weights data/dog.jpg

