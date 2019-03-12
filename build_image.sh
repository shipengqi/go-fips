#!/usr/bin/env bash
BUILD_IMAGE_NAME=golang-fips

GOLANG_VERSION=1.12
VERSION=$GOLANG_VERSION-alpine3.9
BRANCH=dev.boringcrypto.go$GOLANG_VERSION

# Clean
rm -rf go
# Clone repo
git clone git@github.com:golang/go.git -b $BRANCH

# Build golang-fips image 
docker build \
-t localhost:5000/golang-fips:$VERSION \
.
