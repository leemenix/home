#!/bin/bash


#### Debian, Ubuntu Section ####

echo "Update Debian based distros"
sudo apt update

echo "Install common tools"
sudo apt install -y \
	 vim git ansible
