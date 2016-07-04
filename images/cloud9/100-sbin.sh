#!/bin/bash

(cat > /opt/rapidbulldozer/properties/git.properties <<EOF
EMAIL="${EMAIL}"
NAME="${NAME}"
EOF
) &&
true