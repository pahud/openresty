#!/bin/bash

service openresty start && tail -f /usr/local/openresty/nginx/logs/nginx.pid
