#!/bin/bash

RELEASE_DIR='./njs';
REPO_NAME='soulteary/docker-njs'

for njs_ver in $RELEASE_DIR/*; do
    tag=$(echo $njs_ver | cut -b 7-);
    echo "Build: $tag";
    set -a
        . "$njs_ver/.env"
    set +a

    docker-slim build --target $REPO_NAME:$tag --tag $REPO_NAME:$tag-slim --http-probe=false
done
