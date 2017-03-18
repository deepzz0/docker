#!/bin/bash

set -e

default="n"
tag="latest"

echo "build elasticsearch..."
docker build -t deepzz/elasticsearch:$tag .

read -p "是否 push 到远程仓库(y/n):" default
if  [ $default = "y" ] ;then
    docker push deepzz/elasticsearch:$tag
fi
