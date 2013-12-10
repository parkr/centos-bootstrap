#! /bin/bash

yum install mysql mysql-server
chkconfig --levels 235 mysqld on
/etc/init.d/mysqld start
mysql_secure_installation

