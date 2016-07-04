#!/bin/bash

cd $(mktemp -d) &&
    TSTAMP=$(date +%Y%m%d%H%M) &&
    tar --create --file gnucash-${TSTAMP}.tar --directory ${HOME} gnucash &&
    gzip -9 gnucash-${TSTAMP}.tar &&
    gpg2 --encrypt --recipient "2D2D81DA" --sign gnucash-${TSTAMP}.tar.gz &&
    gdrive upload --parent "0B5yjkaCDthrQUWdZNEZJMlNTME0" gnucash-${TSTAMP}.tar.gz &&
    cd $(mktemp -d) &&
    read -p "FILE ID:  " FILE_ID &&
    gdrive download "${FILE_ID}" &&
    gpg2 *.gpg &&
    gunzip *.gz &&
    tar --extract --file *.tar &&
    diff -qr gnucash ${HOME}/gnucash &&
    true