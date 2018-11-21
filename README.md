# Introduction
This repo is a finished version of the steps outlined [here](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/examples-gstreamer-plugin.html#examples-gstreamer-plugin-download).  It uses `gstreamer` and a connected USB camera to stream video to a Kinesis Video Stream on AWS.

# Installation & Setup

## Create Kinesis Video Stream
Do this through the AWS dashboard.

## Install Docker
`sudo apt update && sudo apt install docker.io`

## Install AWS CLI
`sudo pip install aws-shell`

## Auth Docker w/ AWS Container Registry
Has to be run w/ `sudo` for some reason?
`sudo $(aws ecr get-login --no-include-email --region us-west-2 --registry-ids 546150905175)`

## Copy Project Files to RPi
- `Dockerfile`
- `docker-entrypoint.sh`
- `run-container.rpi.sh`

## Add Creditials to `.env`
- AWS_ACCESS_KEY
- AWS_SECRET_KEY
- AWS_REGION
- AWS_VIDEO_STREAM_NAME

## Build
`sudo docker build -t kinesis-video-stream:latest .`

## Launch
`sudo ./run-container.rpi.sh`
