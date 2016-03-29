#!/bin/bash

echo "go build mysql..."
docker build -t dev.ccplaying.com:5000/mysql:5.7 . 
