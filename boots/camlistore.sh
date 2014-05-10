#! /bin/bash

set -e

VERSION="0.7"
FILENAME="camlistore-${VERSION}"
GZ_FILENAME="${FILENAME}.tar.gz"

curl "https://codeload.github.com/bradfitz/camlistore/tar.gz/${VERSION}" -o $GZ_FILENAME
tar -xzvf $GZ_FILENAME

cd $FILENAME
go run make.go
sudo cp bin/* /usr/bin/ -v

cd -
rm $GZ_FILENAME
rm -r $FILENAME
