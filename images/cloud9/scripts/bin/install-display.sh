#!/bin/bash

source /opt/rapidbulldozer/properties/display.properties &&
echo "export DISPLAY=${DISPLAY}" >> ${HOME}/.bashrc &&
true