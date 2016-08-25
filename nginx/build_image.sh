#!/bin/bash

echo "go build nginx..."
docker build -t 127.0.0.1:5000/nginx .
