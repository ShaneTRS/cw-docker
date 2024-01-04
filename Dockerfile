FROM alpine:latest
ADD docker /docker
RUN apk add --no-cache bash socat wine
WORKDIR /data
VOLUME ["/data"]
ENTRYPOINT ["/docker/lazy", "2000", "12345", "tcp"]
EXPOSE 2000/tcp