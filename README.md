# openresty with docker

```sh
docker run --name openresty -p 80:80 -d pahud/openresty
```

include extra locations into nginx.conf
--
Syntax:

```
docker run -d --name openresty  -e EXTRA_NGINX_CONF_URL="<EXTRA_NGINX_CONF_URL>" -p 80:80 -d pahud/openresty
```

Example:

```
docker run -d --name openresty  -e EXTRA_NGINX_CONF_URL="docker run -d --name openresty -e EXTRA_NGINX_CONF_URL="https://gist.githubusercontent.com/pahud/7ea408089eb4f81be127de5c4b2846f5/raw/5aca21248e921445b22edb4e286f0dd75a5c2ce5/openresty-common-extra-locations.conf" -p 80:80 -d pahud/openresty" -p 80:80 -d pahud/openresty
```

