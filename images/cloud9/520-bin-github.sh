#!/bin/bash

source /opt/rapidbulldozer/properties/github.properties &&
echo -e "\n${GITHUB_ACCESS_TOKEN}\n\n " | jspm registry config github &&
true