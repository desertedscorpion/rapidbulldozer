#!/bin/bash

(cat > /opt/rapidbulldozer/properties/ldap.properties <<EOF
LDAP_USERNAME=${LDAP_USERNAME}
LDAP_PASSWORD=${LDAP_PASSWORD}
LDAP_EMAIL=${LDAP_EMAIL}
EOF
) &&
true