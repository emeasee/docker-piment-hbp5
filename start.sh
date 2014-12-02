#!/bin/bash

git clone -b build --single-branch $REPO_URL /opt/site

exec /usr/sbin/nginx -g "deamon off;"
