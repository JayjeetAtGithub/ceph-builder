#!/bin/bash
set -ex

yum update -y
yum install -y centos-release-scl scl-utils devtoolset-8 epel-release
yum install -y python-pip python-devel
pip install --upgrade pip
pip install virtualenv
scl enable devtoolset-8 bash