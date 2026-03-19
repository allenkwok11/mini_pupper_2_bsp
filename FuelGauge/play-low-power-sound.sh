#!/bin/bash

cardnums=$(aplay -l  | grep Headphones | cut -d ' ' -f 2 | cut -d ':' -f 1 | head -n 1)
BSP_DIR=$(find /home -maxdepth 2 -type d -name mini_pupper_bsp 2>/dev/null | head -n 1)
if [ -z "$BSP_DIR" ] && [ -d /root/mini_pupper_bsp ]
then
	BSP_DIR=/root/mini_pupper_bsp
fi

if [ -n "$cardnums" ] && [ -n "$BSP_DIR" ] && [ -f "$BSP_DIR/Audio/low_power.mp3" ]
then
	mpg123 -a hw:$cardnums,0 "$BSP_DIR/Audio/low_power.mp3"
fi
