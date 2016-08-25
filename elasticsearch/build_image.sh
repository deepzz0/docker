#!/bin/bash

echo "go build elasticsearch..."
docker build -t 127.0.0.1:5000/elasticsearch .
