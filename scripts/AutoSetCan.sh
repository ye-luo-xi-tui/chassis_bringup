#!/bin/bash
while true
do
    sudo ip link set can0 up type can bitrate 1000000
    sleep 1
done