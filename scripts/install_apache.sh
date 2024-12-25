#!/bin/bash
# install_apache.sh

# Update package list
sudo yum update -y

# Install Apache2 (httpd)
sudo yum install -y httpd

# Enable Apache to start on boot
sudo systemctl enable httpd
