#!/bin/bash

set -e

default="n"
tag="latest"

cp $GOPATH/bin/etcd . && \
cp $GOPATH/bin/etcdctl . 

echo "build etcd..."
docker build -t deepzz/etcd:$tag .

read -p "是否 push 到远程仓库(y/n):" default
if  [ $default = "y" ] ;then
    docker push deepzz/etcd:$tag
fi
