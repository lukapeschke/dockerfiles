FROM            debian:stretch-slim
MAINTAINER      Luka Peschke <mail@lukapeschke.com>

RUN  apt update \
     && apt install -qy qbittorrent-nox \
     && rm -rf /var/cache/apt/* \
     && adduser qbittorrent

USER qbittorrent
WORKDIR /home/qbittorrent

RUN  mkdir -p ~/.config/qBittorrent/ \
     && echo -e '[LegalNotice]\nAccepted=true' \
        > ~/.config/qBittorrent/qBittorrent.conf

ENTRYPOINT ["qbittorrent-nox"]
