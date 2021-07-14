#!/bin/bash
echo " "
echo "Start to copy script files to /home/ubuntu"
echo ""
cp `rospack find chassis_bringup`/scripts/start_master.sh ~/
cp `rospack find chassis_bringup`/scripts/rm_start.sh ~/
chmod 777 ~/start_master.sh
chmod 777 ~/rm_start.sh
echo " "
echo "Start to copy service files to /lib/systemd/system/"
echo ""
sudo cp `rospack find chassis_bringup`/scripts/start_master.service  /lib/systemd/system/
sudo cp `rospack find chassis_bringup`/scripts/rm_start.service  /lib/systemd/system/
echo " "
echo "Enable auto rm start! "
echo ""
sudo systemctl enable start_master.service
sudo systemctl enable rm_start.service
echo "Finish "
