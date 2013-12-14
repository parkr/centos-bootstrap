#! /bin/bash

set -e

VERSION="0.5"
FILENAME="camlistore-${VERSION}"
GZ_FILENAME="${FILENAME}.tar.gz"

curl "https://codeload.github.com/bradfitz/camlistore/tar.gz/0.5" -o $GZ_FILENAME
tar -xzvf $GZ_FILENAME

cd $FILENAME
go run make.go
sudo cp bin/* /usr/bin/ -v
cd -
