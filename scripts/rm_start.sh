#!/bin/bash
sudo ip link set can0 up type can bitrate 1000000

source /opt/ros/noetic/setup.bash
export ROS_PACKAGE_PATH=~/catkin_ws:$ROS_PACKAGE_PATH
source ~/catkin_ws/devel/setup.bash
export ROS_IP=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' | grep -v '172.17.0.1')
if test -z "${ROS_IP}"; then
  export ROS_IP=$(dig +short localhost)
fi
mon launch --disable-ui rm_bringup start.launch

