#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose"

unset -v latest
for file in "./snapshots"/*; do
  [[ $file -nt $latest ]] && latest=$file
done

echo "applying latest snapshot..."

$COMPOSE exec directus npx directus schema apply $latest