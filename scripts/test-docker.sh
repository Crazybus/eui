#!/usr/bin/env bash
docker run \
  --rm \
  -i \
  --user=$UID \
  -e HOME=/tmp \
  -v $(pwd):/app \
  -w /app \
  node:8 bash -c 'npm config set spin false && yarn && npm run test'
