#! /bin/bash

ASCIIDOC_VERSION="8.6.9"

wget http://downloads.sourceforge.net/project/asciidoc/asciidoc/${ASCIIDOC_VERSION}/asciidoc-${ASCIIDOC_VERSION}.tar.gz
tar -xzf asciidoc-${ASCIIDOC_VERSION}.tar.gz
cd asciidoc-${ASCIIDOC_VERSION}
./configure
sudo make install
sudo make docs

rm -f  asciidoc-${ASCIIDOC_VERSION}.tar.gz
rm -rf asciidoc-${ASCIIDOC_VERSION}
