#!/bin/bash

if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
    echo "%{F#66ffffff}%{F-}"
else
    if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
    then 
        echo "%{F#2193ff}%{F-}"
    else
        echo "%{F#2193ff}%{F-}"
    fi
fi
