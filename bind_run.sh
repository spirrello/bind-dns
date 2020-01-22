#!/usr/bin/env bash

VERSION=0.0.1
IMAGE="registry.liaison.prod:443/k8s/bind9:${VERSION}"
docker pull $IMAGE

exec docker run -d --name bind9 -p 53:53 -p 53:53/udp \
-v data/named.conf:/etc/bind/named.conf \
-v data/otx.lab.ab:/etc/bind/otx.lab.ab \
$IMAGE
