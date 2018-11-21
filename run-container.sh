#!/bin/bash
source ./.env
docker run -it \
  -e AWS_VIDEO_STREAM_NAME=$AWS_VIDEO_STREAM_NAME \
  -e AWS_ACCESS_KEY=$AWS_ACCESS_KEY \
  -e AWS_SECRET_KEY=$AWS_SECRET_KEY \
  -e AWS_REGION=$AWS_REGION \
  --device=/dev/video0 \
  --network="host" \
  kinesis-video-stream:latest
