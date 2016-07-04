#!/bin/bash

git -C /var/workspace init &&
source /opt/rapidbulldozer/properties/workspace.properties &&
git -C /var/workspace remote add canonical ${CANONICAL_URL} &&
git -C /var/workspace remote add origin ${ORIGIN_URL} &&
true