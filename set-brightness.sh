#!/usr/bin/env bash

if [ -z $1 ]; then
    echo "\
Usage: $0 NUM

Set screen brightness to NUM% of maximum allowed value.
"
else
    kernel=intel_backlight
    maxBr=$(cat /sys/class/backlight/$kernel/max_brightness)
    br=$(( $1 * $maxBr / 100 ))
    echo $br > /sys/class/backlight/$kernel/brightness
fi
