osrf/ariac-docker base: master

our edits to ariac-docker:

*in /team_config, create a folder: team_case
 our changes will only be in this folder

from: 
~/ariac_ws/ariac-docker

do:

goes in build_team_system.bash:

'git clone https://{access_token}@github.com/cwru-robotics/cwru_ariac_2019.git'

-----
  to test, run:
  './prepare_team_system.bash team_case'

  then run:
  './run_trial.bash team_case sample'
  (or other run bash trial)

  to playback
  'roslaunch osrf_gear gear_playback.launch state_log_path:=`pwd`/logs/example_team/sample/gazebo/state.log'

  to change launch file
  change cwru_ariac.launch in cwru_launch in cwru_ariac_2019



