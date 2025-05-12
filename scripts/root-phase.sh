#!/bin/bash
set -euo pipefail

pacman -Syu --noconfirm bc composer curl ffmpeg jq php streamlink
useradd -m -s /bin/bash -d /opt/archival archival
