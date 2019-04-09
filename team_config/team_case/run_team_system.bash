#!/usr/bin/env bash

source /home/ariac-user/cwru_ws/install/setup.bash
source /home/ariac-user/cwru_ws/devel/setup.bash

rosdep init
rosdep update

roscd cwru_launch

roslaunch cwru_launch cwru_ariac.launch
