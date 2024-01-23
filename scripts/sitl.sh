#!/usr/bin/bash

sim()
{
    roslaunch simulation scan.launch
}

sitl()
{
    cd ~/drone/ardupilot/ArduCopter/
    . ~/.profile
    sim_vehicle.py -v ArduCopter -f gazebo-iris --console
}

apm_sim()
{
    roslaunch simulation apm.launch
}

apm()
{
    roslaunch mavros apm.launch
}