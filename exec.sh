#!/bin/bash


pwd=`pwd`
basename=${pwd##*/}
imagename=${basename#*-}

IMAGE_NAME="${imagename}"
CONTAINER_NAME="${IMAGE_NAME}"

docker exec -ti "$CONTAINER_NAME" /bin/bash
