#!/bin/bash

git clone -b build --single-branch $REPO_URL /opt/site

/usr/sbin/nginx
