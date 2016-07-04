#!/bin/bash

PORT=${@} &&
VERSION=$(cat version) &&
export GPG_SECRET_KEY="$(cat ${HOME}/.private/secret.key)" &&
export GPG_OWNER_TRUST="$(cat ${HOME}/.private/owner.trust)" &&
export ID_RSA="$(cat ${HOME}/.ssh/id_rsa)" &&
export PASS_HOST="github.com" &&
export PASS_URL=git@github.com:AFnRFCb7/lanterngold.git &&
export WORKSPACE=$(mktemp -d) &&
export CANONICAL_HOST=github.com &&
export ORIGIN_HOST=github.com &&
export CANONICAL_URL=git@github.com:desertedscorpion/rapidbulldozer.git &&
export ORIGIN_URL=git@github.com:desertedscorpion/rapidbulldozer.git &&
export DISPLAY=$(ifconfig | grep "inet.*netmask" | grep -v "127.0.0.1" | cut -f2 -d " "):0 &&
export EMAIL=emory.merryman@gmail.com &&
export NAME="Emory Merryman" &&
docker run -it --rm --env GPG_SECRET_KEY="${GPG_SECRET_KEY}" --env GPG_OWNER_TRUST="${GPG_OWNER_TRUST}" --env ID_RSA="${ID_RSA}" --env PASS_HOST="${PASS_HOST}" --env PASS_URL="${PASS_URL}" --env CANONICAL_HOST="${CANONICAL_HOST}" --env ORIGIN_HOST="${ORIGIN_HOST}" --env CANONICAL_URL="${CANONICAL_URL}" --env ORIGIN_URL="${ORIGIN_URL}" --env DISPLAY="${DISPLAY}" --env EMAIL="emory.merryman@gmail.com" --env NAME="Emory Merryman" -p ${PORT}:8080  --volume ${HOME}/.private/secret.key:/opt/rapidbulldozer/gpg.secret.key:ro desertedscorpion/cloud9:${VERSION}
true