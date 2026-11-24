FROM ghcr.io/lavalink-devs/lavalink:4.2.2

# Use the repository's Lavalink configuration.
COPY application.yml /opt/Lavalink/application.yml

EXPOSE 2333
