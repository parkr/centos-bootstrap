#! /usr/bin/env bash
set -xe

# ruby 2.1.0
RUBY_VERSION=2.1.1
FOLDER_NAME="ruby-${RUBY_VERSION}"
TAR_FILE="${FOLDER_NAME}.tar.gz"
cd /usr/src

if [ ! -d "${FOLDER_NAME}" ]; then
  if [ ! -f "${TAR_FILE}" ]; then
    sudo wget ftp://ftp.ruby-lang.org/pub/ruby/2.1/${TAR_FILE}
  fi
  sudo tar -zxvf ${TAR_FILE}
fi

cd ${FOLDER_NAME}
sudo autoconf
sudo ./configure --prefix=/usr
sudo make
sudo make install
/usr/bin/ruby --version

echo "Great! Ruby $(/usr/bin/ruby --version) is all installed. Now bootstrap RubyGems to finish up."
