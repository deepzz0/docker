#!/bin/bash

set -e

default="n"
tag="latest"

echo "build bind9..."
docker build -t deepzz/bind9:$tag .

read -p "是否 push 到远程仓库(y/n):" default
if  [ $default = "y" ] ;then
    docker push deepzz/bind9:$tag
fi
