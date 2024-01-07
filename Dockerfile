FROM alpine:latest
ADD docker /docker
WORKDIR /data
RUN wget -qO- 'https://archive.org/download/CubeWorldAlpha/cubeworld-20130624.zip'|unzip -j -
RUN apk add --no-cache wine
ENTRYPOINT ["/docker/entrypoint"]
CMD ["2000", "12345", "tcp", "/docker/start"]
ENV CW_SILENCE=1 CW_LAZY=1 CW_SEED=26879
EXPOSE 2000/tcp