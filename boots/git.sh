#! /bin/bash

set -e

VERSION="2.1.4"

wget https://github.com/git/git/archive/v${VERSION}.zip
unzip v${VERSION}

cd git-${VERSION}
sudo make prefix=/usr install install-html install-info
make install-doc
