#!/bin/bash
# deploy_react.sh

mkdir /home/ec2-user/my-react-app
# Navigate to the project folder (adjust if necessary)
cd /home/ec2-user/my-react-app

# Ensure the build directory exists
if [ ! -d "build" ]; then
  echo "Build directory not found. Please build the React app first."
  exit 1
fi

# Copy the React build to the Apache web root
sudo cp -r build/* /var/www/html/

# Give proper permissions
sudo chown -R apache:apache /var/www/html/
