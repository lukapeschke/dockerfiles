#!/bin/sh -xe

export SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt

/usr/bin/deluged && /usr/bin/deluge-web -d
