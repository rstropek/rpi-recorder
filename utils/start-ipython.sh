#!/bin/bash
docker run -it --rm -p 5000:5000 \
  -v ~/rpi-recorder:/share/rpi-recorder \
  -w /share/rpi-recorder \
  --name flask python \
  /bin/bash
