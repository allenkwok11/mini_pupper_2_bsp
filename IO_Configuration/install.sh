#!/bin/bash

if [ -d /boot/firmware ]
then
	sudo cp config.txt /boot/firmware/ -f
else
	echo "skip IO_Configuration: /boot/firmware not found"
fi
