#!/usr/bin/env bash
GOLANG_VERSION=1.12
VERSION=$GOLANG_VERSION-alpine3.9
BRANCH=dev.boringcrypto.go$GOLANG_VERSION

# Clean
rm -rf go
# Clone Golang repo
git clone git@github.com:golang/go.git
cd go
git checkout $BRANCH
cd ..

# Build golang-fips image 
docker build \
--label com.microfocus.image-version=$VERSION \
--label com.microfocus.image-name=golang-fips \
--label com.microfocus.itom.golang-fips=$VERSION \
--label vendor="Micro Focus International plc" \
--build-arg="https_proxy=$https_proxy" \
--build-arg="http_proxy=$https_proxy" \
-t localhost:5000/golang-fips:$VERSION \
.
