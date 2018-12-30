# Raspberry Pi Recorder

## Introduction

Sample project for building a video recording tool with a web frontend based on Raspberry Pi. This is just a side project used to learn about Raspberry, it's camera support, Python etc.

## Notes

### Prerequisites

I use a *Raspberry Pi 3 Model B+* with a *Camera Module V2* for development purposes. Make sure to [enable the camera](https://www.raspberrypi.org/documentation/configuration/camera.md).

### Preparing the Pi

I use Docker on the Raspberry Pi to develop my app. To prepare a Pi from scratch for this project, perform the following tasks:

1. Use [Raspbian Stretch Lite](https://www.raspberrypi.org/downloads/raspbian/) as the base image
1. Install *Docker*:
   1. [Installation guide](https://docs.docker.com/install/linux/docker-ce/debian/#install-from-a-package)
   1. [Package source](https://download.docker.com/linux/debian/dists/stretch/pool/stable/armhf/)
   1. Install *docker-compose* from [Hypriot's repository](https://docs.docker.com/install/linux/docker-ce/debian/#install-docker-compose-for-raspbian)
   1. Enable managing [Docker as a non-root user](https://docs.docker.com/install/linux/linux-postinstall/#manage-docker-as-a-non-root-user)
1. Install *git* (`sudo apt-get install git`)
1. Pull the following Docker images:
   1. `docker pull python`
   1. `docker pull trnape/rpi-samba` (I use *Samba* to access files on the Pi from my Windows dev machine)
1. Clone this repository on the Pi: `git clone https://github.com/rstropek/rpi-recorder.git`
1. Run Samba in Docker container to share files on the network (run [start-samba.sh](utils/start-samba.sh) to start container and make it auto-restart after reboot)

