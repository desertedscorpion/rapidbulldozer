#!/bin/bash

dnf update --assumeyes &&
dnf install --assumeyes dnf coreutils &&
chmod 0500 /opt/rapidbulldozer/scripts/sbin/*.sh &&
chmod 0555 /opt/rapidbulldozer/scripts/bin/*.sh &&
export PATH=/opt/rapidbulldozer/scripts/sbin:${PATH} &&
install-user.sh &&
install-cloud9.sh &&
install-gpg.sh &&
install-ssh.sh &&
install-pass.sh &&
su --login user /opt/rapidbulldozer/scripts/bin/install.sh &&
dnf update --assumeyes &&
dnf clean all