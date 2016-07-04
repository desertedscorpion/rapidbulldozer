#!/bin/bash

dnf install --assumeyes dnf shadow-utils sudo &&
    adduser --create-home user &&
    echo "user ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/user &&
    chmod 0444 /etc/sudoers.d/user &&
    true