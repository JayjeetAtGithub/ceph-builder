#!/bin/bash
set -ex

yum install -y centos-release-scl scl-utils epel-release
yum install -y git wget gnupg2 ccache
yum install -y cmake3
ln -s /usr/bin/cmake3 /usr/bin/cmake
yum install -y python-pip
yum install -y devtoolset-8
pip install --upgrade pip
pip install --upgrade virtualenv
scl enable devtoolset-8 bash
