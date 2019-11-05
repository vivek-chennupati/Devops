#!/bin/bash

#vmstat | awk '{print $15}' >>file.txt

#read update
#status=$( $update | awk 'NR==3{print $15}' )
status=$( vmstat | awk 'NR==3{print $15}' )

echo $status >>file.txt

#echo -e "The current update for idel cpu is : \033[96m$status\033[0m"

if [ $status -lt 80 ]
then
        echo "\033[96mCPU is\033[0m \033[91mhigh\033[0m"
else
        echo -e "\033[96mCPU is\033[0m \033[091mlow\033[0m"
fi

