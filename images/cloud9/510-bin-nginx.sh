#!/bin/bash

git -C /etc/nginx init &&
    git -C /etc/nginx remote add origin ssh://git@gitlab.363-283.io:2252/emory.merryman/nginx-dev-infrastructure.git &&
    git -C /etc/nginx fetch origin &&
    git -C /etc/nginx checkout develop &&
    true