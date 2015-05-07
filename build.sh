#!/bin/bash

pwd=`pwd`
basename=${pwd##*/}
imagename=${basename#*-}
docker build -t ${imagename} .

exit 0
