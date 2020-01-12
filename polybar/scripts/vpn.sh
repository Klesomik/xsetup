#!/bin/sh

if [ "$(pgrep openvpn)" ]; then
    echo "%{F#2193ff}%{F-}"
else
    echo "%{F#66ffffff}%{F-}"
fi