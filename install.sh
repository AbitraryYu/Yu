#!/bin/bash

### WELCOME MESSAGE ###
#echo "Hello, $(whoami)! This is a minimal postinstall script. Make sure you have the following packages:"

#echo -e " base-devel \n git \n networkmanager"

#echo "type 'yes' if you are ready"

#read INPUT
#
#while [ $INPUT != 'yes' ]
#do
#	echo "Please input 'yes' if you are ready"
#	read INPUT
#done

### FUNCTIONS ###
checkinternet() {
	echo "Checking internet"
}
installloop(){ \
	pacman -S --noconfirm $program
}
readcsv() {
	{
		read
		while IFS=, read -r tag program comment
		do
			# echo "I got:$tag|$program|$comment"
			# echo "Installing $program"
			checkinstalled "$program"
		done 
	} < progs.csv
}
checkinstalled() {
	# pacman -Qqe > pkglist.txt
	echo "$1"
}

### PRE-EXECUTION ###
readcsv
#checkinternet
#if ! $(exit $?); then
#	echo "some_command failed"
#fi
#echo "$?"


