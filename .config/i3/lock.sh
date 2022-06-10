#!/bin/sh
set -e
xset s off dpms 0 10 0
#betterlockscreen -l dim
i3lock --color=4c7899 --ignore-empty-password --show-failed-attempts --nofork
xset s off -dpms
