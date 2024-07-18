#!/bin/bash

cd ../custom-openairinterface5g/cmake_targets/ran_build/build
./nr-softmodem -O ../../../targets/PROJECTS/GENERIC-NR-5GC/CONF/gnb.sa.band78.fr1.106PRB.usrpb210.conf --sa -E --continuous-tx > ~/panos/command_outputs/gNB.txt 2>&1


