#!/bin/bash

output=debian-setup.log

echo "################################" >> $output
echo "#### Script made by Softryx ####" >> $output
echo "#### - 2023/08/06" >> $output
echo "#### Seting up basic security for debian server" >> $output
echo "################################" >> $output

echo "#### Starting update ####" >> $output
apt update >> $output
echo "#### END UPDATE ####" >> $output
echo "#### Starting Upgrade ####" >> $output
apt upgrade >> $output
echo "#### END UPGRADE ####" >> $output

echo "#### end of script " >> $output
echo "################################" >> $output
echo "#### Do not forget to verify if you can connect via SSH" >> $output
echo "#### " >> $output
echo "################################" >> $output