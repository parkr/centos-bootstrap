#! /bin/sh

set -ex

VERSION="0.5"
PKG_NAME="reptyr-${VERSION}"

# Download ZIP
curl -o $PKG_NAME.zip https://codeload.github.com/nelhage/reptyr/zip/$PKG_NAME
# Unzip
unzip $PKG_NAME.zip
# cd into dir and make && make install
cd "reptyr-$PKG_NAME" && make && sudo make install
# cd out and remove
cd - && rm -rf "reptyr-$PKG_NAME" $PKG_NAME.zip
