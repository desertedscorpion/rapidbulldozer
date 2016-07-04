#!/bin/bash

export PATH=/opt/rapidbulldozer/scripts/sbin:${PATH} &&
mkdir /opt/rapidbulldozer/properties &&
init-workspace.sh &&
init-display.sh &&
init-gpg.sh &&
init-ssh.sh &&
init-pass.sh &&
init-parts.sh &&
su --login user /opt/rapidbulldozer/scripts/bin/init.sh