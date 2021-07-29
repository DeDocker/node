#!/bin/bash

BASEIMAGE="desmart/node:"

docker build . -f Dockerfile -t ${BASEIMAGE}latest -t ${BASEIMAGE}latest-focal -t ${BASEIMAGE}16-focal
docker push ${BASEIMAGE}latest
docker push ${BASEIMAGE}latest-focal
docker push ${BASEIMAGE}16-focal
