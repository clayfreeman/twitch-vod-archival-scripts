#!/bin/bash
set -euo pipefail

mkdir -p ~/.twitch-eventsub-relay
composer require -d ~/.twitch-eventsub-relay clayfreeman/twitch-eventsub-relay
