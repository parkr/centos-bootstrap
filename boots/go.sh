#! /bin/bash

set -ex

GOROOT_BOOTSTRAP=/usr/local/go1.4.2
GO_VERSION="1.6.2"
GO_TAR_FILE="go${GO_VERSION}.src.tar.gz"
INSTALL_DIR="/usr/local"
GO_DIR="$INSTALL_DIR/go"

if [ -d "$GO_DIR" ]; then
  sudo rm -rf $GO_DIR
fi

if [ ! -f "$GO_TAR_FILE" ]; then
  wget https://storage.googleapis.com/golang/$GO_TAR_FILE
fi

sudo tar -C $INSTALL_DIR -xzf $GO_TAR_FILE

cd $GO_DIR/src

sudo ./make.bash

export PATH="$GO_DIR/bin:$PATH"
go version
set +x
echo
echo "Now add $GO_DIR/bin to your PATH variable and you're good to go."
