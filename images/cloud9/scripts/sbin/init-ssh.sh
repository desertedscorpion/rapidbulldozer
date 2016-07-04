#!/bin/bash

echo "${ID_RSA}" > /opt/rapidbulldozer/properties/id_rsa &&
(cat > /opt/rapidbulldozer/properties/ssh.properties <<EOF
PASS_HOST=${PASS_HOST}
EOF
) &&
true