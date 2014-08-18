#! /bin/bash

set -e

sudo yum remove git -y

VERSION="2.1.0"

wget https://github.com/git/git/archive/v${VERSION}.zip
unzip v${VERSION}

cd git-${VERSION}
sudo make prefix=/usr install install-html install-info
make install-doc
