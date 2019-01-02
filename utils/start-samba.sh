#!/bin/bash
docker run -d -p 445:445 \
  --restart always \
  -v ~/rpi-recorder:/share/rpi-recorder \
  -v ~/recordings:/share/recordings \
  --name samba trnape/rpi-samba \
  -u "dev:dev" \
  -s "rpi-recorder:/share/rpi-recorder:rw:dev" \
  -s "recordings:/share/recordings:rw:dev" 
