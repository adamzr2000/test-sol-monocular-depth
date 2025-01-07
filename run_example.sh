#!/bin/bash

docker run \
    -it \
    --name depth-estimation \
    --rm \
    --net host \
    --privileged \
    -e LD_LIBRARY_PATH=/app:$LD_LIBRARY_PATH \
    depth-estimation:latest \

echo "Done."
