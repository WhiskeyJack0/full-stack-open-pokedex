#!/bin/bash

echo "Hello from shell script"
apt-get update; apt install -y curl
response=$(curl --silent localhost:5000/health)

echo "Server response: $response"
if [[ "$response" == "ok" ]]; then
  echo "Successful response from /health"
  exit 0
else
  echo "Failed query to /health"
  exit 1
fi