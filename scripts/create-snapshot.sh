#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose"

DATE=$(date "+%F")
TIMESTAMP=$(date "+%s")

$COMPOSE exec directus npx directus schema snapshot ./snapshots/"$DATE"-snapshot-"$TIMESTAMP".yaml