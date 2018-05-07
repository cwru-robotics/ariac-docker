#!/usr/bin/env bash

source /home/ariac-user/cwru_ws/install/setup.bash
source /home/ariac-user/cwru_ws/devel/setup.bash

roscd cwru_ariac_launch

roslaunch cwru_ariac_launch cwru_ariac.launch
