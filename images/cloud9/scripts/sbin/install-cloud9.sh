#!/bin/bash

dnf install --assumeyes coreutils git make python tar which bzip2 ncurses gmp-devel mpfr-devel libmpc-devel glibc-devel flex bison glibc-static zlib-devel gcc gcc-c++ nodejs npm &&
    mkdir /opt/rapidbulldozer/c9sdk &&
    chmod 0555 /opt/rapidbulldozer/c9sdk &&
    git -C /opt/rapidbulldozer/c9sdk init &&
    git -C /opt/rapidbulldozer/c9sdk remote add origin git://github.com/c9/core.git &&
    git -C /opt/rapidbulldozer/c9sdk pull origin master &&
    /opt/rapidbulldozer/c9sdk/scripts/install-sdk.sh &&
    curl --insecure https://gitlab.363-283.io/emory.merryman/c9-install/raw/master/install.sh | su --login user