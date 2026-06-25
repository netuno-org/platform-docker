# platform-docker
Official container images for the Netuno Platform.

## Prerequisites
- [Docker](https://docs.docker.com/get-started/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## ⚙️ Initial Setup
1. Copy the Docker configuration files to the root of your Netuno app.
2. Open the `docker-compose.yml` file and replace all occurrences of `<netuno-app-name>` with your application's actual name.
- In the volume mapping:
```yml
volumes:
  - .:/srv/netuno/apps/<my-netuno-app>
```
- In the startup command:
```yml
command: bash -c "./netuno server app=<my-netuno-app>"
```

## 🏃 How to Run
To and start the services:
```bash
docker compose up

# 💡 To run in the background, add the -d flag
docker compose up -d
```

## Useful Commands
- To show netuno logs
```bash
docker compose logs -f netuno
```
- Stop containers without removing them
```bash
docker compose stop
```
- Stop and remove containers
```bash
docker compose down

# 💡 To also remove the database, add the -v flag to remove volumes linked to the containers
docker compose down -v
```
