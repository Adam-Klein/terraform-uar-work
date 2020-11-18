#! /bin/bash

# Update apt cache
apt-get update

# Install PHP and apache2
apt-get install -y php apache2

# Clone website content from repository
git clone https://github.com/brikis98/php-app.git /var/www/html/app /var/www/html/app

# Start apache webserver
service apache2 start