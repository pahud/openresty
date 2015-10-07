#!/bin/bash

pwd=`pwd`
basename=${pwd##*/}
imagename=${basename#*-}
docker build -t pahud/${imagename}:latest .

exit 0
