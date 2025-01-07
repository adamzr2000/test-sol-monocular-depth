#!/bin/bash

#Assemble docker image. 
echo 'Building test-sol docker image.'
sudo docker build . -t test-sol
