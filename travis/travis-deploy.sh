#!/bin/bash

# print outputs and exit on first failure
set -xe

if [ $TRAVIS_BRANCH == "master" ] ; then
    ssh -i ./deploy.pem ubuntu@52.13.20.197 /var/www/parser-server/travis/deploy.sh
else
    echo "No deploy script for branch '$TRAVIS_BRANCH'"
fi
