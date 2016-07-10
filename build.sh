#!/bin/bash

VERSION=$(cat version) &&
docker build --tag emorymerryman/cloud9:${VERSION} images/cloud9 &&
true