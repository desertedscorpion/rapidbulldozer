#!/bin/bash

chmod 0500 /opt/rapidbulldozer/init/sbin/*.sh &&
chmod 0555 /opt/rapidbulldozer/init/bin/*.sh &&
run-parts /opt/rapidbulldozer/init/sbin &&
true