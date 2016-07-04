#!/bin/bash

cp /opt/rapidbulldozer/gpg.secret.key /opt/rapidbulldozer/properties/gpg.secret.key &&
cp /opt/rapidbulldozer/gpg.owner.trust /opt/rapidbulldozer/properties/gpg.owner.trust &&
/opt/rapidbulldozer/scripts/bin/init-gpg.sh &&
true