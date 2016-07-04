#!/bin/bash

VERSION=$(cat version) &&
docker build --tag desertedscorpion/cloud9${VERSION} images/cloud9 &&
true