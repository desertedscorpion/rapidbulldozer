#!/bin/bash

dnf update --assumeyes &&
dnf install --assumeyes dnf coreutils &&
install-user.sh &&
install-cloud9.sh
dnf update --assumeyes &&
dnf clean all