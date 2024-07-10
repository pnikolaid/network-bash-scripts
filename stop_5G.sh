#!/bin/bash

cd ../oai-cn5g
docker compose down
docker stop $(docker ps -q)
pkill -f nr-softmodem

