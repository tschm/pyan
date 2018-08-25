#!/usr/bin/env bash

image='tschm/pyan'

if [ $? -eq 0 ]
then
    # https://stackoverflow.com/questions/27643017/do-i-need-to-manually-tag-latest-when-pushing-to-docker-public-repository
    docker build --tag ${image}:latest .
    docker push ${image}:latest

    TIMESTAMP=$(date +%Y%m%d%H%M%S)
    echo ${TIMESTAMP}

    docker tag ${image} ${image}:${TIMESTAMP}
    docker push ${image}:${TIMESTAMP}
    docker rmi -f ${image}:${TIMESTAMP}
fi
