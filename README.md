# Mallow Lavalink

Lavalink 4.2.2 deployment for Mallow Bot.

## Deploy on Northflank

1. Create a new service and choose **Build from Git repository**.
2. Connect `WebsiteDevelopmentStudios/lavalink`.
3. Choose the `main` branch and Dockerfile build.
4. Set the service's container port to **2333** and protocol to **TCP**.
5. Add the environment variable `LAVALINK_PASSWORD` with a long, private password.
6. Deploy the service.
7. Enable a public TCP endpoint for port 2333 if the selected Northflank plan supports it.

## Mallow Bot connection

Use the public TCP hostname and port supplied by Northflank:

- Host: Northflank TCP hostname
- Port: Northflank TCP port
- Password: value of `LAVALINK_PASSWORD`

Do not use an HTTP-only domain or expose the password in this repository.

## Notes

- The image runs Lavalink 4.2.2 on Java 21.
- The YouTube source plugin is configured for search and direct video IDs.
- This repository does not contain credentials.
- A successful build does not guarantee that the Northflank plan provides a public TCP endpoint. Confirm TCP ingress availability and pricing before relying on the service.
