FROM debian:stretch-slim

COPY start.sh /start.sh

RUN  apt-get update \
     && apt-get install -y --no-install-recommends \
        deluged deluge-web \
     && apt clean -y \
     && rm -rf /var/cache/apt /var/lib/apt/lists/* \
     && useradd -m -d /home/deluge deluge

WORKDIR /home/deluge

USER deluge

CMD  /start.sh
