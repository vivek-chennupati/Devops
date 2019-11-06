#!/bin/bash

#df -Th / | awk 'NR==2{print $6}'| cut -d'%' -f1



#read update
#status=$( $update | awk 'NR==2{print $6}' | cut -d'%' -f1 )
status=$( df -Th | awk 'NR==2{print $6}' | cut -d'%' -f1 )

#echo -e "The current update of usage percent is : \033[96m$status\033[0m"

if [ $status -lt 90 ]
then
        echo -e "\033[96mUsage percent is\033[0m \033[91mOK\033[0m"
else
        echo -e "\033[96mUsage percent is\033[0m \033[091mhigh (Warning)\033[0m"
fi

