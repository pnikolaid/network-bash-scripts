#!/bin/bash

cd ../oai-cn5g
docker compose pull
docker compose up -d
sudo ip route  add 10.0.0.0/24 via 192.168.70.134 dev demo-oai
	
