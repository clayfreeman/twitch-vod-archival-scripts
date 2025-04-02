FROM archlinux:latest
COPY scripts/ /scripts/

RUN /scripts/root-phase.sh && su archival -c /scripts/archival-phase.sh
COPY src/ /opt/archival/hooks.d/

USER archival
ENV PATH="/opt/archival/.twitch-eventsub-relay/vendor/bin:${PATH}"

WORKDIR /opt/archival
