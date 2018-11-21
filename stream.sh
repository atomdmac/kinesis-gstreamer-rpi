gst-launch-1.0 \
  v4l2src \
  do-timestamp=TRUE \
  device=/dev/video0 \
  ! h264parse \
  ! video/x-h264,stream-format=avc,alignment=au \
  ! kvssink \
    stream-name="$AWS_VIDEO_STREAM_NAME" \
    storage-size=512 \
    access-key="$AWS_ACCESS_KEY" \
    secret-key="$AWS_SECRET_KEY" \
    aws-region="$AWS_REGION"
