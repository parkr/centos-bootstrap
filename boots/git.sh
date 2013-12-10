#! /bin/bash

set -e

sudo yum remove git

VERSION="1.8.4"

wget https://github.com/git/git/archive/v${VERSION}.zip
unzip v${VERSION}

cd git-${VERSION}
sudo make prefix=/usr install install-doc install-html install-info
