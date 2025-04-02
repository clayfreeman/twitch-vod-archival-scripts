#!/bin/bash
set -euo pipefail

pacman -Syu --noconfirm composer curl ffmpeg jq php streamlink
useradd -m -s /bin/bash -d /opt/archival archival
