#!/bin/sh


memtotal="$(mem -t)"

while :; do
   #printf "%s" "battery: $(power) | temp: $(temp) | usedMem: $(mem -u) | date: $(date +"%F") | time: $(date +"%I:%M:%S") "
   #
   if [ "$(power -c)" = "yes" ] 
   then
	   charging_status="charging"
   else
	  charging_status="discharging"
   fi

   echo "batt: $(power) ($charging_status) | temp: $(temp) | mem: $(mem -u) / $memtotal | $(date +"%F") $(date +"%I:%M:%S") "
done 

