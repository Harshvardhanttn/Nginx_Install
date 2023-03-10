#!/bin/bash


echo "Do you want to install nginx? yes or no"
read value
if [ $value == yes ];
then
if [ `cat /etc/os-release |grep ^ID | grep Ubuntu` ] || [ `cat /etc/os-release |grep ^ID | grep Debian` ];
then
	sudo apt update
	sudo apt install nginx
else
	sudo yum install epel-release
	sudo yum update
	sudo yum install nginx
fi
if [ $value == yes ];
then
	echo "Installed Successfully"
else
	echo "Not installled"
fi


