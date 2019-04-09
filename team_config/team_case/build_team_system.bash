#!/usr/bin/env bash

# Prepare ROS
. /opt/ros/${ROS_DISTRO}/setup.bash

# Install the necessary dependencies for getting the team's source code
# Note: there is no need to use `sudo`.
apt-get update
apt-get install -y wget unzip

apt-get update

# Create a catkin workspace
mkdir -p /home/ariac-user/cwru_ws/src

# Fetch the source code for our team's code
cd /home/ariac-user/cwru_ws/src

git clone https://{person_access_token}@github.com/{user_name}/cwru_ariac_2019.git

cd ..
catkin_make install -j4

source /home/ariac-user/cwru_ws/devel/setup.bash
