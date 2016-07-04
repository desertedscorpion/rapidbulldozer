#!/bin/bash

VERSION=${@} &&
docker build --tag desertedscorpion/cloud9${VERSION} images/cloud9 &&
true