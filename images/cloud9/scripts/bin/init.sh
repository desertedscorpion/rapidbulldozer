#!/bin/bash

export PATH=/opt/rapidbulldozer/scripts/bin:${PATH} &&
init-bin.sh &&
init-workspace.sh &&
init-cloud9.sh &&
init-gpg.sh &&
init-ssh.sh &&
init-pass.sh &&
init-parts.sh &&
node "/opt/rapidbulldozer/c9sdk/server.js" --listen 0.0.0.0 -w "/var/workspace" -p 8080 --auth user:password &&
true