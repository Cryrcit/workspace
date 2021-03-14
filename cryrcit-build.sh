#!/bin/bash

if [[ $1 = "" ]]
then
      echo "Is required a parameter (for acquire variable PHP_VERSION)"
      exit
else
      PHP_VERSION=$1
fi

#### halt script on error
set -xe

#### Build the Docker Images
    docker build -f ./Dockerfile-${PHP_VERSION} .
