#!/bin/bash

/usr/local/openresty/nginx/sbin/nginx && tail -f /usr/local/openresty/nginx/logs/nginx.pid
