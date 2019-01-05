#! /bin/bash
# reference this site : https://docs.opencv.org/3.4/d7/d9f/tutorial_linux_install.html
# reference https://www.cnblogs.com/paladinzxl/p/6749446.html
# Cmake ..  error reference : https://www.smwenku.com/a/5bcbb8752b71776a052c10cb/

sudo apt-get install build-essential

sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev

sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

#get github
cd ~/opencv-3.2.0
mkdir build
cd build

# First follow this link to modifed opencv 3.2.0 folder.
# https://stackoverflow.com/questions/46584000/cmake-error-variables-are-set-to-notfound
#after modified the files as ref 3. then cmake the file in the build folder.
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_CUDA=ON -D WITH_CUBLAS=ON -D WITH_TBB=ON -D WITH_V4L=ON -D WITH_QT=ON -D WITH_OPENGL=ON -D BUILD_PERF_TESTS=OFF -D BUILD_TESTS=OFF -DCUDA_NVCC_FLAGS="-D_FORCE_INLINES" ..

# cmake -DCMAKE_BUILD_TYPE=Release <= this release position also can change to opencv's source code directory which is download as opencv.zip or opencv-3.2.0 folder.

#then make file, but this step output a error
make -j12

#need to do step 8 in homepage manual in build folder.
sudo make install

# if happen errors like this : https://stackoverflow.com/questions/24337932/cannot-get-opencv-to-compile-because-of-undefined-references
# then code should compiler with below code. test_1 is execute file name, test_1.cpp is normal cpp file. and the sudo ldconfig also should be run one time.
g++ -o test_1 test_1.cpp `pkg-config opencv --cflags --libs`
sudo ldconfig
#delete connect package command: sudo apt remove libopencv*




