#!/bin/bash

export PATH=/opt/rapidbulldozer/scripts/bin:${PATH} &&
node "/opt/rapidbulldozer/c9sdk/server.js" --listen 0.0.0.0 -w "/var/workspace" -p 8080 --auth user:password &&
