#!/bin/bash

output=debian-setup.log

echo "################################"
echo "#### Script made by Softryx ####" 
echo "####       2023/08/06       ####"
echo "################################"

echo "#### Starting update ####"
apt update
echo "#### END UPDATE ####"
echo "#### Starting Upgrade ####"
apt upgrade
echo "#### END UPGRADE ####"

read -p "New SSH port ? (default: 22)" port
if [ -z "$port" ]; then
    echo "#### No change for SSH port"
    echo "#### /!\ Port ssh not changed" 
else
    string="s/#Port 22/Port ${port}"
    sed -i -e $string /etc/ssh/sshd_config
    echo "#### Port number changed to ${port}"
fi

echo "#### end of script "
echo "################################"
echo "#### Do not forget to verify if you can connect via SSH"
echo "#### "
echo "################################"