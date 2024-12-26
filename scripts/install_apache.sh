#!/bin/bash
# install_apache.sh

# Update package list
sudo yum update -y

# Install Apache2 (httpd)
sudo yum install -y httpd

# Enable Apache to start on boot
sudo systemctl enable httpd

# Enable the Node.js repository (Amazon Linux Extras)
sudo amazon-linux-extras enable nodejs16

# Install Node.js and npm
sudo yum install -y nodejs

# Verify Node.js and npm installation
node -v
npm -v

