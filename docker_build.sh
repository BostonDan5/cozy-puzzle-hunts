#!/bin/bash
# Set DOCKER_BUILDKIT=0 to report layer info
DOCKER_BUILDKIT=0 docker build -t cph:latest  --build-arg DJ_KEY="$(cat ../django_secret_key.txt)" .
