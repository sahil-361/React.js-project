#!/bin/bash
# install_apache.sh
# Update package list
sudo yum update -y

# Install Apache2 (httpd)
sudo yum install -y httpd


echo "Installing dependencies..."
sudo yum install -y nodejs npm  # Install node and npm, if necessary