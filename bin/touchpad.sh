#!/bin/bash

rmmod i2c_hid
modprobe i2c_hid

sleep 1

synclient TapButton1=1
synclient TapButton2=3
synclient TapButton3=2
