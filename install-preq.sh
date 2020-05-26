#!/bin/bash
set -ex

yum update -y
yum install -y centos-release-scl scl-utils epel-release
yum install -y python-pip
yum install -y devtoolset-8
pip install --upgrade pip
pip install --upgrade virtualenv
scl enable devtoolset-8 bash