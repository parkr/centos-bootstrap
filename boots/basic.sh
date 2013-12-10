#! /bin/bash

yum update
yum -y groupinstall "Development Tools"
yum -y install ntp
ntpdate pool.ntp.org
yum -y install \
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
