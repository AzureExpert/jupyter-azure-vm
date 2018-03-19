#!/bin/bash
server=$1
image=$2
regUsername=$3
regPassword=$4

sudo docker login $server -u $regUsername -p $regPassword
sudo nvidia-docker run -d -p 5555:5555 -p 80:7842 -p 8787:8787 -p 8786:8786 -p 8788:8788 -v ~/dev/:/root/sharedfolder $image sh ./run_jupyter.sh