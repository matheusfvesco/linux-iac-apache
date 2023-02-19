#!/bin/bash

echo "Updating and upgrading server..."
apt-get update
apt-get upgrade -y

echo "Installing dependencies..."
apt-get install apache2 -y
apt-get install unzip -y


echo "Downloading and setting up apache files..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Deleting temporary files..."

cd /tmp
rm -rf linux-site-dio-main
rm -rf main.zip

echo "Your apache server should be up and running on one of the IPs below:"
hostname -I
