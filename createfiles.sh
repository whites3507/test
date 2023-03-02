#!/bin/bash
# Instructor Sedrick White
# Script: Creating Directories and Files
#Change Ownership of /data/volume1
echo "Setting Directory Permissions"
sudo chown $(whoami):$(whoami) -R /data/volume1
#Making DataFiles Directory
echo "Making Directory DataFiles"
mkdir -p /data/volume1/DataFiles
#Creating a file named data.log
echo "Creating /data/volume1/data.log"
touch /data/volume1/data.log
#Add name to data.log
echo "Adding name to Data.log"
echo $(id) > /data/volume1/data.log
#Creating 9 files with the size on 10MB
echo "Creating 10 files"
for i in $(seq 0 9)
	do
		dd if=/dev/zero of=/data/volume1/DataFiles/datafile$i bs=1M count=10
	done
echo "Done :-)"
