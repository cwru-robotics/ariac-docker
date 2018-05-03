#!/usr/bin/env bash

# Prepare ROS
. /opt/ros/${ROS_DISTRO}/setup.bash

# Create a catkin workspace
mkdir -p /home/ariac-user/cwru_ws/src

# Fetch the source code for our team's code
cd /home/ariac-user/cwru_ws/src
git clone http://github.com/wsnewman/learning_ros_external_packages.git
git clone http://github.com/cwru-robotics/cwru_ariac_2018.git
rm -rf learning_ros_external_packages/sticky_fingers #This is unneeded and has a ros control dependency.

cd ..
catkin_make install -j4

source /home/ariac-user/cwru_ws/devel/setup.bash
