#! /usr/bin/env bash

set -xe

# RubyGems
RUBYGEMS_VERSION=2.2.2
cd /usr/src
sudo wget http://production.cf.rubygems.org/rubygems/rubygems-$RUBYGEMS_VERSION.tgz
sudo tar zxvf rubygems-$RUBYGEMS_VERSION.tgz
cd rubygems-$RUBYGEMS_VERSION
sudo /usr/bin/ruby setup.rb
/usr/bin/gem --version
