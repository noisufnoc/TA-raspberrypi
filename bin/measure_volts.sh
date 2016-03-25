#!/bin/sh

# Iterate through RPi voltage vields, without label for Splunking

for id in core sdram_c sdram_i sdram_p; do \
echo -n "$(/usr/bin/vcgencmd measure_volts $id | sed s/volt/$id/g | cut -d"V" -f1) "; \
done
