#!/bin/sh

exec notify-send "$(curl -s https://www.accuweather.com/en/br/arapiraca/31915/weather-forecast/31915\ | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3 \1/p')"
