#!/bin/bash

docker run \
    -it \
    --name test-sol \
    --rm \
    --net host \
    --privileged \
    -e LD_LIBRARY_PATH=/app:$LD_LIBRARY_PATH \
    test-sol:latest \

echo "Done."
