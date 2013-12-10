#! /bin/bash

sudo yum install postgresql postgresql-devel postgresql-libs postgresql-server
service postgres start

# ruby should be installed, so gems can now be installed
rvmsudo gem install pg -- --with-pg-dir=/var/lib/pgsql
