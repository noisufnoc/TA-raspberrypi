#!/bin/sh

# Return RPi temperature in C, without label for Splunking

/usr/bin/vcgencmd measure_temp | cut -d"'" -f1
