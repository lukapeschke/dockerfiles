#!/bin/sh -xe

chown -R deluge:deluge /home/deluge

exec gosu deluge /start_deluge.sh
