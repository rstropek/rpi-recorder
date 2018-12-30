# Raspberry Pi Recorder

## Introduction

Sample project for building a video recording tool with a web frontend based on Raspberry Pi. This is just a side project used to learn about Raspberry, it's camera support, Python etc.

## Getting Started

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
   1. `docker pull node`
   1. `docker pull trnape/rpi-samba` (I use *Samba* to access files on the Pi from my Windows dev machine)
1. Clone this repository on the Pi: `git clone https://github.com/rstropek/rpi-recorder.git`

### Utility Scripts

| Script                                     | Description |
|--------------------------------------------|---|
| [start-samba.sh](utils/start-samba.sh)     | Run Samba in Docker container to share files on the network. Makes container auto-restart after reboots. See script for user/password of share. |
| [start-ipython.sh](utils/start-ipython.sh) | Start interactive Docker container with Python. Use this container so that you do not have to install Python directly on the Pi. |

## Web UI

### Introduction

The Web UI is written in *Python* with [Flask](http://flask.pocoo.org/). You can find the code in the [*rrui*](src/rrui) folder.

### Requirements

The following commands assume that your current directory is `~/rpi-recorder/src/rrui`:

1. Install client-side requirements using *NPM*: `docker run --rm -t -v $(pwd):/src -w /src node npm install`

1. Install requirements from the requirements file *requirements.txt*: `pip install -r requirements.txt`

### Debugging and Development

Run the debug version of the Web UI as follows:

```sh
export FLASK_APP=flaskr
export FLASK_ENV=development
flask run --host=0.0.0.0
```
