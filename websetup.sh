#!/bin/bash

echo "======================================="
echo " Updating package repository"
echo "======================================="
sudo apt update

echo "======================================="
echo " Installing Nginx, Wget, and Unzip"
echo "======================================="
sudo apt install -y nginx unzip wget

echo "======================================="
echo " Downloading Website Template"
echo "======================================="
wget -O graphite.zip https://www.tooplate.com/zip-templates/2156_graphite_creative.zip

echo "======================================="
echo " Extracting Website Files"
echo "======================================="
unzip -o graphite.zip

echo "======================================="
echo " Deploying Website to Nginx"
echo "======================================="
sudo cp -r 2156_graphite_creative/* /var/www/html/

echo "======================================="
echo " Starting and Enabling Nginx"
echo "======================================="
sudo systemctl restart nginx
sudo systemctl enable nginx

echo "======================================="
echo " Nginx Service Status"
echo "======================================="
sudo systemctl status nginx --no-pager

echo "======================================="
echo " Website Deployment Completed Successfully!"
echo "======================================="
