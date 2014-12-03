#!/bin/bash

git clone -b build --single-branch $REPO_URL /opt/site

nginx -s reload
