#!/bin/bash

RELEASE_DIR='./njs';
REPO_NAME='soulteary/docker-njs'

for njs_ver in $RELEASE_DIR/*; do
    tag=$(echo $njs_ver | cut -b 7-);
    echo "Build: $tag";
    set -a
        . "$njs_ver/.env"
    set +a

    docker build --build-arg DIST_OS=$DIST_OS --build-arg NGX_VER=$NGX_VER --build-arg PCRE_VER=$PCRE_VER --build-arg EDIT_VER=$EDIT_VER --build-arg CURSESW_VER=$CURSESW_VER --tag $REPO_NAME:$tag .
done
