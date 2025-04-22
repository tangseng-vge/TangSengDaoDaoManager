#!/usr/bin/env sh

set -e
set -u

envsubst '${API_URL}' < /nginx.conf.template > /etc/nginx/conf.d/default.conf


exec "$@"
