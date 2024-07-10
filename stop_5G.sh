#!/bin/bash

cd ../oai-cn5g
docker compose down
pkill -f nr-softmodem
docker stop $(docker ps -q)

