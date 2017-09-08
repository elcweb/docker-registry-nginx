#!/bin/sh

# Configure dns resolver
RESOLVER=$(cat /etc/resolv.conf | grep nameserver | cut -d " " -f 2)
echo "resolver ${RESOLVER:-10.0.0.162} valid=2s;" > /etc/nginx/conf.d/resolver.conf

# Setup authentification
# admin:admin
DEFAULT_USERS='admin:$apr1$AyMA3sgt$jchcyTGgMk2SmuN1kbSR./'

echo ${USERS:-$DEFAULT_USERS} | tr " " "\n" > /etc/nginx/conf.d/registry.password

# Run the original command
echo "[+] Starting command: $@"
exec "$@"

