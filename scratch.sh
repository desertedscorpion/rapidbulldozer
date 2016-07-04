#!/bin/bash

export GPG_SECRET_KEY="$(cat ${HOME}/.private/secret.key)" &&
export GPG_OWNER_TRUST="$(cat ${HOME}/.private/owner.trust)" &&
export ID_RSA="$(cat ${HOME}/.ssh/id_rsa)" &&
export PASS_HOST="github.com" &&
export PASS_URL=git@github.com:AFnRFCb7/lanterngold.git &&
export WORKSPACE=$(mktemp -d) &&
export CANONICAL_HOST=${1} &&
export ORIGIN_HOST=${2} &&
export CANONICAL_URL=${3} &&
export ORIGIN_URL=${3} &&
export DISPLAY=$(ifconfig | grep "inet.*netmask" | grep -v "127.0.0.1" | cut -f2 -d " "):0
docker-compose build scratch &&
docker-compose up scratch &&
true