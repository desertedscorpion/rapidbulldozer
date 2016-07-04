#!/bin/bash

export PATH=/opt/rapidbulldozer/scripts/sbin:${PATH} &&
mkdir /opt/rapidbulldozer/properties &&
init-gpg.sh &&
su --login user /opt/rapidbulldozer/scripts/bin/init.sh