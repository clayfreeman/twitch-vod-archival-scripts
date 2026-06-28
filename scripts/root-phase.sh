#!/bin/bash
set -euo pipefail

pacman -Syu --noconfirm bc composer curl ffmpeg jq php pv streamlink
useradd -m -s /bin/bash -d /opt/archival archival
