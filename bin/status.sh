#!/bin/sh

while :; do
	if [ "$(power -c)" = "yes" ]; then
		charging_status="charging"
                charging_emoji="🔋"
	else
		charging_status="discharging"
                charging_emoji="🪫"
                
	fi

	#[ "$(curl -o /dev/null -s -w "%{http_code}\n" https://example.com)" = '200' ] && INTERNET="yes" || INTERNET="NO"
        if [ "$(curl -o /dev/null -s -w "%{http_code}\n" https://example.com)" = '200' ]; then
                INTERNET="yes"
        else
            INTERNET="false"
        fi

	printf "%s" "$charging_emoji $(power) ($charging_status) 🛜 $INTERNET  🌡️ $(temp)  💾 $(mem -u) / $(mem -t)  $(date +"%F") $(date +"%I:%M:%S") "

	# timeout to not hog up system resources and heat up the laptop
	sleep 0.4

done
