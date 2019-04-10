#!/bin/sh

NAME=teamcity-server

docker stop --time 360 $NAME
docker rm $NAME
