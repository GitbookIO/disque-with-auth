#!/bin/bash

set -e

if [ -z "${DISQUE_PASS}" ]; then
    # Remove auth
    cat /usr/local/etc/disque/disque-template.conf | sed -e "s|^requirepass|# requirepass|" > /usr/local/etc/disque/disque.conf
else
    # Replace password
    cat /usr/local/etc/disque/disque-template.conf | sed -e "s|\${DISQUE_PASS}|${DISQUE_PASS}|" > /usr/local/etc/disque/disque.conf
fi

# Ensure permissions
if [ "$1" = 'disque-server' ]; then
    chown -R disque .
    exec gosu disque "$@"
fi

# Execute whatever is passed
exec "$@"
