#!/usr/bin/env bash

VERSION=2018.2.4
IMAGE="jetbrains/teamcity-server:${VERSION}"
docker pull $IMAGE

exec docker run -it --name teamcity-server-instance  \
--name "teamcity-server" \
--detach \
-v datadir:/data/teamcity_server/datadir \
-v logs:/opt/teamcity/logs  \
-p 8111:8111 \
$IMAGE
