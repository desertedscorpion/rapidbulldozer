#!/bin/bash

echo "${GPG_SECRET_KEY}" > /opt/rapidbulldozer/properties/gpg.secret.key &&
echo "${GPG_OWNER_TRUST}" > /opt/rapidbulldozer/properties/gpg.owner.trust &&
true