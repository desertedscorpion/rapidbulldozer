#!/bin/bash

dnf install --assumeyes crontabs &&
mkdir /opt/rapidbulldozer/init &&
mkdir /opt/rapidbulldozer/init/sbin &&
mkdir /opt/rapidbulldozer/init/bin &&
true