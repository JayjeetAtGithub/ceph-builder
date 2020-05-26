#!/bin/bash
set -ex

yum install -y centos-release-scl scl-utils devtoolset-8 python-pip
pip install --upgrade pip
pip install virtualenv
scl enable devtoolset-8 bash