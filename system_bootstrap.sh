#!/bin/bash

### TBD ###
# Recognize system on it's own 
# Make script fully automatic, but interactive as well
# Modular environment preparation ( jekyll, virtualenv, docker, kubernetes ... )

### FUNCTIONS ###

#### Debian, Ubuntu Section ####
function ubuntu_linux {

echo "Update Debian based distros"
	sudo apt update

echo "Install common tools"
	sudo apt install -y \
        	vim git ansible

echo "Trigger Ansible bootstrap playbook"
	ansible-playbook bootstrap.yaml

}

#### RedHat, Centos Section ####
function centos_linux {

	echo "In progress ..."
}

#### Menu fucntion ####
function menu {

echo "Choose your current Linux Distro"

select LINUX_DISTRO in Ubuntu Centos Quit;
	do
		read -p "You select $LINUX_DISTRO ($REPLY), you sure? [N/y] " -n 1 -r
		echo " "
		if [[ $REPLY =~ ^[yY]$ ]]
		then
			if [ $LINUX_DISTRO = "Ubuntu" ]; then
	       			ubuntu_linux	
			elif [ $LINUX_DISTRO = "Centos" ]; then
				centos_linux
			else
				exit 0;
			fi
		fi
	done

}

#### MAIN ####
menu
