FROM            alpine:latest
MAINTAINER      Luka Peschke <mail@lukapeschke.com>

RUN             apk add --no-cache \
                    collectd \
                    collectd-network

ADD             collectd.conf /etc/collectd/

ENTRYPOINT      ["collectd", "-f"]
