#!/bin/bash

# Update Centos65 with any patches but omit kernel patches
yum update -y --exclude=kernel

# Install tools
yum install -y nano git unzip screen

# Install Apache
yum install -y httpd httpd-devel httpd-tools

# Configure Apache as a service and set to on
chkconfig --add httpd
chkconfig httpd on

# Stop Apache service to configure symbolic link for html folder
service httpd stop

# Remove default Apache html folder
rm -rf /var/www/html

# Create symbolic link between host and guest for the Apache html folder
ln -s /vagrant /var/www/html

# Start Apache
service httpd start

# Install PHP
yum install -y php php-devel php-cli php-common php-mysql

# Install MySQL
yum install -y mysql mysql-devel mysql-server

# Configure mysql as a service and set to on
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";

# Download Starter Content Placeholder

# Restart Apache
service httpd restart 

