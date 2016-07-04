#!/bin/bash

source /opt/rapidbulldozer/properties/git.properties &&
git -C /var/workspace config user.email="${EMAIL}" &&
git -C /var/workspace config user.name="${NAME}" &&
true