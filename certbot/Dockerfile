FROM            nginx:mainline
MAINTAINER      Luka Peschke <mail@lukapeschke.com>

RUN echo 'deb http://ftp.debian.org/debian stretch-backports main' \
    >> /etc/apt/sources.list.d/stretch-backports.list \
    && apt update \
    && apt install -qy python-certbot-nginx -t stretch-backports \
    && rm -rf /var/cache/apt/* \
    && rm -f /etc/apt/sources.list.d/stretch-backports.list

ENTRYPOINT ["certbot"]
