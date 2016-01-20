# openresty with docker

``sh
docker run --name openresty -p 80:80 -d pahud/openresty
``

include extra locations into nginx.conf
--
Syntax:

``
docker run -d --name openresty  -e EXTRA_NGINX_CONF_URL="<EXTRA_NGINX_CONF_URL>" -p 80:80 -d pahud/openresty
``

Example:

``
docker run -d --name openresty  -e EXTRA_NGINX_CONF_URL="https://gist.githubusercontent.com/pahud/8c5b945cf86f3d4fcb60/raw/a283b9b9ba23f21a43f7284f78f894fed94dff7b/openresty-common-extra-locations.conf" -p 80:80 -d pahud/openresty
``
