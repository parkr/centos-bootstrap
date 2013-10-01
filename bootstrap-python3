#! /bin/bash

set -e

PYTHON="Python-3.3.2"
DISTRIBUTE="distribute-0.7.3"

if [ -z "$(which python3.3)" ]; then
  wget http://python.org/ftp/python/3.3.2/$PYTHON.tar.bz2
  tar xf $PYTHON.tar.bz2
  cd $PYTHON
  ./configure --prefix=/usr
  sudo make && sudo make altinstall
fi

if [ -z "$(which easy_install-3.3)" ]; then
  wget https://pypi.python.org/packages/source/d/distribute/$DISTRIBUTE.zip \
    --no-check-certificate
  unzip $DISTRIBUTE.zip
  cd $DISTRIBUTE
  sudo python3.3 setup.py install
  sudo mv /usr/bin/easy_install /usr/bin/easy_install-3.3
  sudo mv /usr/bin/easy_install-2.6 /usr/bin/easy_install
fi
