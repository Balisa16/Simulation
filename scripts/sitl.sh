#!/usr/bin/bash

sim()
{
	roslaunch simulation scan.launch
}

sitl()
{
	local currentdir=$(pwd)
	cd /home/dev/drone/ardupilot/ArduCopter
	. ~/.profile
	sim_vehicle.py -v ArduCopter -f gazebo-iris --console
	cd $currentdir
}

apm_sim()
{
	roslaunch simulation apm.launch
}

apm()
{
	roslaunch mavros apm.launch
}
