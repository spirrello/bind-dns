#!/bin/sh

NAME=bind-server

docker stop --time 360 $NAME
docker rm $NAME
