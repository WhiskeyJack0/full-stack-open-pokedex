#!/bin/bash

echo "Hello from shell script"
apt-get update; apt install -y curl
response=$(curl --silent localhost:5000/health)

echo "Server response: $response"
if [[ "$response" != "ok" ]]; then
  exit 1
else
  exit 0
fi