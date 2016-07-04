#!/bin/bash

gpg --import /opt/rapidbulldozer/properties/gpg.secret.key &&
(gpg --allow-secret-key --import /opt/rapidbulldozer/properties/gpg.secret.key|| true ) &&
(gpg2 --allow-secret-key --import /opt/rapidbulldozer/properties/gpg.secret.key || true ) &&
gpg --import-ownertrust /opt/rapidbulldozer/properties/gpg.owner.trust &&
true