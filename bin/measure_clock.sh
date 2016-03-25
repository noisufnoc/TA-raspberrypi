#!/bin/sh

#
# Iterate through RPi clock speeds, add labels for Splunking
#

# TODO: Find better way to strip frequency(##) labels

for id in arm core h264 isp v3d uart pwm emmc pixel vec hdmi dpi; do \
echo -n "$(/usr/bin/vcgencmd measure_clock $id | sed s/frequency/$id/g | sed s/'([^)]*)'/''/g) "; \
done
