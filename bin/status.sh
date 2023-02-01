#!/bin/sh

while :; do
   echo "battery: $(power) | temp: $(temp) | usedMem: $(mem -u) | date: $(date +"%F") | time: $(date +"%I:%M:%S") "
   sleep 1.5s
done 

