#!/bin/bash

mkdir ${HOME}/.ssh &&
chmod 0700 ${HOME}/.ssh &&
cat /opt/rapidbulldozer/properties/id_rsa > ${HOME}/.ssh/id_rsa &&
chmod 0600 ${HOME}/.ssh/id_rsa &&
source /opt/rapidbulldozer/properties/ssh.properties &&
(cat > ${HOME}/.ssh/config <<EOF
Host ${PASS_HOST}
StrictHostKeyChecking no

Host ${CANONICAL_HOST}
StrictHostKeyChecking no

Host ${ORIGIN_HOST}
StrictHostKeyChecking no
EOF
) &&
chmod 0600 ${HOME}/.ssh/config &&
true