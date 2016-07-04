#!/bin/bash

echo PATH=/opt/rapidbulldozer/node-v6.2.0-linux-x64/bin:\${PATH} >> ${HOME}/.bashrc &&
npm set registry https://npm.363-283.io &&
npm set cafile /opt/rapidbulldozer/ca.crt &&
npm config set strict-ssl false &&
jspm config strictSSL false &&
source /opt/needlesslaser/properties/ldap.properties &&
echo -e "${LDAP_USERNAME}\n${LDAP_PASSWORD}\n${LDAP_EMAIL}" | npm adduser --registry https://npm.363-283.io
true