#! /bin/bash

cd ~

wget https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_384.81_linux-run

chmod +x cuda_9.0.176_384.81_linux-run

./cuda_9.0.176_384.81_linux-run --extract=$HOME

#need to agree to a agreement. push spacebar until bottom of agreement. then input accept as 
#the guide.

sudo ./cuda-linux.9.0.176-22781540.run

sudo ./cuda-samples.9.0.176-22781540-linux.run

sudo bash -c "echo /usr/local/cuda/lib64/ > /etc/ld.so.conf.d/cuda.conf"

sudo ldconfig

sudo gedit /etc/environment

#then add path to path: :/usr/local/cuda/bin

#reboot

cd /usr/local/cuda-9.0/samples

#make run. this is a long process.
sudo make

#run a query to nvidia cuda for test
cd /usr/local/cuda/samples/bin/x86_64/linux/release

./deviceQuery
#if the bottom line of code output pass ,then above installation is finished.

sudo dpkg -i libcudnn7_7.4.1.5-1+cuda9.0_amd64.deb

sudo dpkg -i libcudnn7-dev_7.4.1.5-1+cuda9.0_amd64.deb

sudo dpkg -i libcudnn7-doc_7.4.1.5-1+cuda9.0_amd64.deb

#verify cuDnn installation
cp -r /usr/src/cudnn_samples_v7/ ~

cd ~/cudnn_samples_v7/mnistCUDNN

make clean && make

./mnistCUDNN

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64"

source ~/.bashrc

#install tensorflow for test cuda and cudnn installation.
pip3 install --upgrade tensorflow-gpu

#then try python3 and run below code. 
$ python3
>>> import tensorflow as tf
>>> sess = \
tf.Session(config=tf.ConfigProto(log_device_placement=True))

#then i should see nvidia series like nvidia GTX1050 string in the result.





