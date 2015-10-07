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
    ${IMAGE_NAME}
    #--link dch-redis:cache.cnhynt.0001.usw2.cache.amazonaws.com \
    #--add-host='cache.cnhynt.0001.usw2.cache.amazonaws.com:127.0.0.1' \
    #--link dch-mysql:dch.cbjkq2axcg0v.us-west-2.rds.amazonaws.com \
    #--link dch-redis:cache.cnhynt.0001.usw2.cache.amazonaws.com \
    #--add-host='api.dch.dlink.com:127.0.0.1' \


echo "DONE"
