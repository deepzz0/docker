#!/bin/bash

set -e

default="n"
tag="5.7"

echo "build mysql..."
docker build -t deepzz/mysql:$tag .

read -p "是否 push 到远程仓库(y/n):" default
if  [ $default = "y" ] ;then
    docker push deepzz/mysql:$tag
fi
