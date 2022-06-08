#!/bin/bash
CWD=$(pwd)
DCN="adhoc_proto"
RPT="proto.dat"
docker build -t $DCN .
docker run -v $CWD/src_data:/opt/src_data --rm $DCN -mcron 

ECHO LOCAL: $CWD/src_data/$RPT