#! /bin/bash

# the_silver_searcher / ag

sudo yum install -y pcre-devel lzma xz-devel

VERSION="0.28.0"
DIR_NAME="the_silver_searcher-$VERSION"
TAR_NAME="$DIR_NAME.tar.gz"

wget -O $TAR_NAME \
  https://github.com/ggreer/the_silver_searcher/archive/$VERSION.tar.gz

tar -xzvf $TAR_NAME
cd $DIR_NAME
./build.sh
sudo make install
