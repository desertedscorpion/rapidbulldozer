#!/bin/bash

GPG_SECRET_KEY="$(cat ${HOME}/.private/secret.key)" &&
GPG_OWNER_TRUST="$(cat ${HOME}/.private/owner.trust)" &&
docker-compose build scratch &&
docker-compose up scratch &&
true