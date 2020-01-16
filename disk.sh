#!/bin/bash

diskavil=$(df -h /dev/sda1 --output=avail)
count=0

for word in $diskavil
do
	count=$((count+1))
	if [ $count -eq 2 ];then
		echo $word
	fi
done
