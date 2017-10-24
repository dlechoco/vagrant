#!/bin/bash 

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

# Download Starter Content Placeholder
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/dlechoco/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/dlechoco/vagrant/master/files/info.php

# Restart Apache
service httpd restart 

