#!/bin/bash

vmstat > info.txt

cpu=`cat data.txt | awk -F " " '{print$15}' | tail -1` 

echo "$cpu"

if [ $cpu -le 80 ]

then
    echo "cpu is low"

else
   echo "cpu is high"

fi
