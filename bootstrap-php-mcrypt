#! /bin/bash

# Remove any old EPEL packages
sudo yum remove epel-release

# Add CentOS 6.8 EPEL package via RPM
sudo rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

# List all packages and look for epel just to make sure it's been installed
sudo rpm -qa | grep epel

# Clean your caches, etc (this is very important)
sudo yum clean all

# Install the package
sudo yum install php-mcrypt
