#! /bin/bash

set -ex

GO_VERSION="1.4"
INSTALL_DIR="/usr/local"
GO_DIR="$INSTALL_DIR/go"

if [ -d "$GO_DIR" ]; then
  sudo rm -rf $GO_DIR
fi

wget https://storage.googleapis.com/golang/go${GO_VERSION}.src.tar.gz

sudo tar -C $INSTALL_DIR -xzf go${GO_VERSION}.src.tar.gz

cd $GO_DIR/src

sudo ./make.bash

export PATH="$GO_DIR/bin:$PATH"
go version

echo "Running basic test..."
[[ $(go run support/run.go) -eq "hello, world" ]] || echo "... failed."

echo
echo "Now add $GO_DIR/bin to your PATH variable and you're good to go."
