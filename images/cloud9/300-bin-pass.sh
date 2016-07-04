#!/bin/bash

KEY=$(gpg --list-keys | grep "^pub" | sed -e "s#^pub\s*[^/]*/##" -e "s#\s.*\$##") &&
pass init ${KEY} &&
pass git init &&
source /opt/rapidbulldozer/properties/pass.properties &&
pass git remote add origin "${PASS_URL}" &&
pass git fetch origin master &&
pass git checkout master &&
true