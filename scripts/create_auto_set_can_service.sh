#!/bin/bash
echo " "
echo "Start to copy script files to /home/ubuntu"
echo ""
cp `rospack find chassis_bringup`/scripts/AutoSetCan.sh /home/ubuntu
chmod 777 /home/ubuntu/AutoSetCan.sh
echo " "
echo "Start to copy service files to /lib/systemd/system/"
echo ""
sudo cp `rospack find chassis_bringup`/scripts/AutoSetCan.service  /lib/systemd/system/
echo " "
echo "Enable auto set can! "
echo ""
sudo systemctl enable AutoSetCan.service
echo "Finish "
