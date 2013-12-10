#! /bin/bash

sudo yum update
sudo yum groupinstall "Development Tools"

sudo yum install ntp
sudo ntpdate pool.ntp.org

sudo yum install \
  zlib \
  zlib-devel \
  httpd \
  httpd-devel \
  sqlite-devel \
  curl-devel \
  apr-devel \
  apr-util-devel \
  mlocate \
  manlibxml2-devel \
  libxslt-devel \
  libffi-devel \
  readline-devel
