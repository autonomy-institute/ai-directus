#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose"
DOCKER="/usr/bin/docker"

cd /home/directus/ai-directus/

$COMPOSE run certbot renew -q && $COMPOSE kill -s SIGHUP nginx
$DOCKER system prune -af