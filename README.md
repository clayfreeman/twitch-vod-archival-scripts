# Twitch VOD Archival Scripts

This repository contains drop-in scripts designed to facilitate the archival of Twitch VODs using [Twitch EventSub Relay].

## Features

- Enables you to automatically start [Streamlink] when a stream goes live.
- Saves VODs in a structured directory format for easy organization.
- Supports optional integration with [Twitch Auth Token Sync] to allow users with Twitch Turbo to avoid ads.

## Requirements

These scripts assume you have:
- [Streamlink] installed to handle video downloading.
- [Twitch EventSub Relay] set up to receive `stream.online` events for the streams you want to archive.
- [Twitch Auth Token Sync] set up to synchronize your authentication token for Twitch Turbo (optional).

## Usage

1. Ensure [Twitch EventSub Relay] is running to trigger the scripts.
2. Set up [Twitch Auth Token Sync] if you intend to use Twitch Turbo.
3. Review the configuration sections for each script in this repository and adjust the configuration as needed.
4. Launch `twitch-eventsub-relay-dispatcher` with the path to the `src` directory in this repository.

## Docker

This repository provides a Docker image which includes the drop-in scripts and all of the commands provided by [Twitch EventSub Relay]:

```
docker pull ghcr.io/clayfreeman/twitch-vod-archival-scripts:latest
docker run --rm -it ghcr.io/clayfreeman/twitch-vod-archival-scripts:latest twitch-eventsub-relay-dispatcher # ...
```

The repository drop-ins are at `/opt/archival/hooks.d`. You will need to set up a volume at `/opt/archival/archives` to store the downloaded files.

[Streamlink]: https://streamlink.github.io/
[Twitch Auth Token Sync]: https://github.com/clayfreeman/twitch-auth-token-sync
[Twitch EventSub Relay]: https://github.com/clayfreeman/twitch-eventsub-relay
