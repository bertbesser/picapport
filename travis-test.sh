#!/bin/bash
set -e

if [ "$ARCH" == "amd64" ]; then
  # test image
  docker run -d -p 8080:8080 --name=picapporttest picapport

  sleep 5

  docker logs picapport
fi
