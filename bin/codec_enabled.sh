#!/bin/sh

#
# Iterate through codecs
#

for id in H264 MPG2 WVC1 MPG4 MJPG WMV9; do \
echo -n "$(/usr/bin/vcgencmd codec_enabled $id) "; \
done
