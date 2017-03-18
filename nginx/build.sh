#!/bin/bash

set -e

default="n"
tag="latest"

if [ "$1" = "alpine" ]; then
    tag="alpine"
    cd alpine
else
    cd jessie
fi

echo "go build nginx..."
docker build -t deepzz/nginx:$tag .

read -p "是否 push 到远程仓库(y/n):" default
if  [ $default = "y" ] ;then
    docker push deepzz/nginx:$tag
fi
