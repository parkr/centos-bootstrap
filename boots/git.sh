#! /bin/bash

set -e

sudo yum install docbook2X
sudo ln -s /usr/bin/db2x_docbook2texi /usr/bin/docbook2x-texi

VERSION="2.9.0"
ZIP_FILE="/tmp/v${VERSION}.zip"
WORK_DIR="/tmp/git-${VERSION}"

[ -f $ZIP_FILE ] || wget https://github.com/git/git/archive/v${VERSION}.zip -O $ZIP_FILE
[ -d $WORK_DIR ] || unzip $ZIP_FILE -d $WORK_DIR

pushd "$WORK_DIR/git-${VERSION}"
make configure
./configure --prefix=/usr
make all doc info
sudo make install
sudo make -e DOCBOOK2X_TEXI=$(which docbook2texi) install-doc
popd

rm -r $WORK_DIR $ZIP_FILE
