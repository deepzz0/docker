#!/bin/bash

echo "go build mysql..."
docker build -t 127.0.0.1:5000/mysql:5.7 .
