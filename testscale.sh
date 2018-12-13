#!/bin/bash

for i in $(seq 1 $1); do
curl http://showscale-mtorres.apps.192.168.71.168.xip.io/ ;
echo "\n";
done
