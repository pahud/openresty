#!/bin/bash


pwd=`pwd`
basename=${pwd##*/} 
#imagename=${basename#*-}
imagename='pahud/openresty'


IMAGE_NAME="${imagename}"
CONTAINER_NAME="openresty"

echo "stop and remove existing container ${CONTAINER_NAME}, please wait..."
docker stop ${CONTAINER_NAME}; docker rm ${CONTAINER_NAME}

docker run --name ${CONTAINER_NAME} -d -p 80:80 -p 443:443 \
    -v `pwd`:/root/outside \
    -v `pwd`/log/supervisor:/var/log/supervisor \
    -e EXTRA_NGINX_CONF_URL="https://gist.githubusercontent.com/pahud/8c5b945cf86f3d4fcb60/raw/a283b9b9ba23f21a43f7284f78f894fed94dff7b/openresty-common-extra-locations.conf" \
    ${IMAGE_NAME}

echo "DONE"
