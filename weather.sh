#!/bin/sh

# Gets the weather and puts it in the file 'crntweather'.  I wrote this because polybar doesn't 
# have a feature where one can click on the module to update it, alternatively he has to wait 
# for the next interval. With this I can update the weather with a cronjob (e.g. every 30 minutes)
# and updating it manually with clicking on the module. This prevents the server from getting 
# bombarded with weather requests.

if [ ! -f ~/.scripts/crntweather ]
then
	touch ~/.scripts/crntweather
fi
curl -s wttr.in/wiesbaden?format=1 | tr -d '+' > ~/.scripts/crntweather