#!/bin/bash
apt-get update -y
apt-get upgrade -y
apt autoremove -y
apt-get install dconf-editor -y

export CUDA_HOME=/usr/local/cuda-10.2
export LD_LIBRARY_PATH=/usr/local/cuda-10.2/lib64:$LD_LIBRARY_PATH
export PATH=/usr/local/cuda-10.2/bin:$PATH

apt-get install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev -y
apt-get install python3-pip -y
pip3 install -U pip testresources setuptools
pip3 install -U numpy==1.16.1 future==0.17.1 mock==3.0.5 h5py==2.9.0 keras_preprocessing==1.0.5 keras_applications==1.0.8 gast==0.2.2 enum34 futures protobuf

# to install TensorFlow 1.15 for JetPack 4.4:
pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v44 ‘tensorflow<2’

# or install the latest version of TensorFlow (2.1) for JetPack 4.4:
# pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v44 tensorflow

#sudo bash init.sh
