#!/bin/bash
set -ex

# yum update -y
yum install -y centos-release-scl scl-utils epel-release git wget gnupg2 ccache
yum install -y python-pip
yum install -y devtoolset-8-gcc-c++
# yum install -y devtoolset-7-gcc-c++
yum install -y cmake3
pip install --upgrade pip
pip install --upgrade virtualenv
ln -s /usr/bin/cmake3 /usr/bin/cmake
# scl enable devtoolset-8 bash
# scl enable devtoolset-7 bash