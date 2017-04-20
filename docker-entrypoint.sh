#!/bin/sh
set -e

if [[ $NGINX_CONFIG ]]
then
    echo $NGINX_CONFIG | base64 -d > /etc/nginx/conf.d/default.conf
fi

exec "$@"
