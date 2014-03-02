#! /usr/bin/env bash

set -xe

# ruby 2.1.0
RUBY_VERSION=2.1.1
cd /usr/src
sudo wget ftp://ftp.ruby-lang.org/pub/ruby/2.1/ruby-$RUBY_VERSION.tar.gz 
sudo tar -zxvf ruby-$RUBY_VERSION.tar.gz
cd ruby-$RUBY_VERSION
sudo autoconf
sudo ./configure PREFIX=/usr
sudo make
sudo make install
/usr/bin/ruby --version
 
./bootstrap rubygems
