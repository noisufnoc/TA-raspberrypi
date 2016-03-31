#!/bin/sh

#
# List RPi frequencies, add labels for Splunking
#

# TODO: Find better way to do this

echo -n "\
	cur_freq=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq) \
	min_freq=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq) \
	max_freq=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq)"
