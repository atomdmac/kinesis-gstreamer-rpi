FROM 546150905175.dkr.ecr.us-west-2.amazonaws.com/kinesis-video-producer-sdk-cpp-amazon-linux

RUN mkdir /app
WORKDIR /app
COPY stream.sh .
COPY docker-entrypoint.sh .
RUN chmod +x stream.sh && \
  chmod +x docker-entrypoint.sh

ENTRYPOINT ["/app/docker-entrypoint.sh"]
