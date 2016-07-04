#!/bin/bash

source /opt/rapidbulldozer/properties/git.properties &&
git config --global user.email "${EMAIL}" &&
git config --global user.name "${NAME}" &&
true