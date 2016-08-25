#!/bin/bash

echo "go build etcd..."
mkdir tmp/ && \
cp Dockerfile tmp/ && \
cp $GOPATH/bin/etcd tmp/ && \
cp $GOPATH/bin/etcdctl tmp/ && \
cd tmp && \

docker build -t 127.0.0.1:5000/etcd .
cd ..
rm -rf tmp
