#!/bin/bash

CLOUD9_PORT=${1} &&
NGINX_PORT=${2} &&
VERSION=$(cat version) &&
export GPG_SECRET_KEY="$(cat ${HOME}/.private/secret.key)" &&
export GPG_OWNER_TRUST="$(cat ${HOME}/.private/owner.trust)" &&
export ID_RSA="$(cat ${HOME}/.ssh/id_rsa)" &&
export PASS_HOST="github.com" &&
export PASS_URL=git@github.com:AFnRFCb7/lanterngold.git &&
export WORKSPACE=$(mktemp -d) &&
export CANONICAL_HOST=gitlab.363-283.io &&
export ORIGIN_HOST=gitlab.363-283.io &&
export CANONICAL_URL=ssh://git@gitlab.363-283.io:2252/emory.merryman/live-analytics-visualization.git &&
export ORIGIN_URL=ssh://git@gitlab.363-283.io:2252/emory.merryman/live-analytics-visualization.git &&
export DISPLAY=$(ifconfig | grep "inet.*netmask" | grep -v "127.0.0.1" | cut -f2 -d " "):0 &&
export EMAIL=emory.merryman@gmail.com &&
export NAME="Emory Merryman" &&
source ${HOME}/.private/ldap.properties &&
export LDAP_USERNAME=${LDAP_USERNAME} &&
export LDAP_PASSWORD=${LDAP_PASSWORD} &&
export LDAP_EMAIL=${LDAP_EMAIL} &&
docker run -it --rm \
    --env GPG_SECRET_KEY="${GPG_SECRET_KEY}" --env GPG_OWNER_TRUST="${GPG_OWNER_TRUST}" --env ID_RSA="${ID_RSA}" --env PASS_HOST="${PASS_HOST}" \
    --env PASS_URL="${PASS_URL}" --env CANONICAL_HOST="${CANONICAL_HOST}" --env ORIGIN_HOST="${ORIGIN_HOST}" --env CANONICAL_URL="${CANONICAL_URL}" \
    --env ORIGIN_URL="${ORIGIN_URL}" --env DISPLAY="${DISPLAY}" --env EMAIL="emory.merryman@gmail.com" --env NAME="Emory Merryman" \
    --env LDAP_USERNAME="${LDAP_USERNAME}" --env LDAP_PASSWORD="${LDAP_PASSWORD}" --env LDAP_EMAIL="${LDAP_EMAIL" \
    -p ${CLOUD9_PORT}:8080 -p ${NGINX_PORT}:8443  --volume ${HOME}/.private/secret.key:/opt/rapidbulldozer/gpg.secret.key:ro desertedscorpion/cloud9:${VERSION}
true