#!/bin/bash

vmstat > data.txt

Mem=`cat data.txt | awk -F " " '{print$15}' | tail -1` 

echo "$Mem"

if [ $Mem -le 80 ]

then
    echo "cpu is low"

else
   echo "cpu is high"

fi
