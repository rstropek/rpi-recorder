#!/bin/bash
docker run -it --rm -p 5000:5000 \
  -v ~/rpi-recorder:/share/rpi-recorder \
  -v /opt/vc/lib:/opt/vc/lib \
  -e "LD_LIBRARY_PATH=/opt/vc/lib" \
  -w /share/rpi-recorder/src/rrui \
  --device=/dev/vchiq \
  --name flask \
  python /bin/bash

# resin/raspberrypi3-python:3.7-stretch /bin/bash
# --device=/dev/vcsm --device=/dev/vchiq \
# --link redis:redis \
