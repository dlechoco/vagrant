#!/bin/bash

# Install MySQL
yum install -y mysql mysql-devel mysql-server

# Configure mysql as a service and set to on
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";


