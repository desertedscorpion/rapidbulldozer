#!/bin/bash

GPG_SECRET_KEY="$(cat ${HOME}/.private/secret.key)" &&
GPG_OWNER_TRUST="$(cat ${HOME}/.private/owner.trust)" &&
ID_RSA="$(cat ${HOME}/.ssh/id_rsa)" &&
PASS_HOST="github.com" &&
PASS_URL=git@github.com:AFnRFCb7/lanterngold.git &&
docker-compose build scratch &&
docker-compose up scratch &&
true