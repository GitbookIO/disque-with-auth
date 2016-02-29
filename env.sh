#!/bin/bash

cat /usr/local/etc/disque/disque-template.conf | sed -e "s|\${DISQUE_PASS}|${DISQUE_PASS}|" > /usr/local/etc/disque/disque.conf