#! /bin/bash

\curl -L https://get.rvm.io | bash -s stable --rails
source /usr/local/rvm/scripts/rvm
rvm pkg install libyaml
rvm pkg install openssl
rvm install 1.9.3 --with-openssl-dir=/usr
rvm use 1.9.3 --default
