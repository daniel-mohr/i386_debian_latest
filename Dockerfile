# https://hub.docker.com/r/i386/debian/
FROM i386/debian:latest
ARG TARGETPLATFORM=linux/i386
COPY entrypoint.sh /entrypoint.sh
RUN apt-get update
ENTRYPOINT ["/entrypoint.sh"]
