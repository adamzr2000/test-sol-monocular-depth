#!/bin/bash

#Assemble docker image. 
echo 'Building depth-estimation docker image.'
sudo docker build . -t depth-estimation
