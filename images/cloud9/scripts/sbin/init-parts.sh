#!/bin/bash

mktemp /opt/rapidbulldozer/init/sbin/XXXXXXXX.sh &&
mktemp /opt/rapidbulldozer/init/bin/XXXXXXXX.sh &&
chmod 0500 /opt/rapidbulldozer/init/sbin/*.sh &&
chmod 0555 /opt/rapidbulldozer/init/bin/*.sh &&
run-parts --exit-on-error -- /opt/rapidbulldozer/init/sbin &&
true