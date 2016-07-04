#!/bin/bash

chown user:user /var/workspace &&
(cat > /opt/rapidbulldozer/properties/workspace.properties <<EOF
CANONICAL_URL=${CANONICAL_URL}
ORIGIN_URL=${ORIGIN_URL}
EOF
) &&
true