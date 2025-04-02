#!/bin/bash
set -euo pipefail

docker build -t ghcr.io/clayfreeman/twitch-vod-archival-scripts:latest .
docker push ghcr.io/clayfreeman/twitch-vod-archival-scripts:latest
