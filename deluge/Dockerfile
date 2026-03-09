FROM debian:trixie

RUN  apt-get update \
     && apt-get install -y --no-install-recommends \
        ca-certificates \
        deluged \
        deluge-web \
        gosu \
     && apt clean -y \
     && rm -rf /var/cache/apt /var/lib/apt/lists/* \
     && useradd -m -d /home/deluge deluge

RUN  mkdir -p /home/deluge/.config/deluge \
     && chown -R deluge:deluge /home/deluge/.config/deluge

COPY start_deluge.sh start.sh /

WORKDIR /home/deluge
CMD  ["/start.sh"]
