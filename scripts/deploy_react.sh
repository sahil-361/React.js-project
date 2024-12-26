#!/bin/bash
# deploy_react.sh

# Navigate to the project folder
cd /home/ec2-user/my-react-app

# Ensure Node.js and npm are installed
if ! command -v npm &> /dev/null
then
    echo "npm not found. Please install Node.js and npm."
    exit 1
fi

npm install

# Ensure the build directory exists
if [ ! -d "build" ]; then
  echo "Build directory not found. Something went wrong with the build process."
  exit 1
fi

# Copy the React build to the Apache web root
sudo cp -r build/*  /home/ec2-user/my-react-app

# Give proper permissions to Apache
sudo chown -R apache:apache /home/ec2-user/my-react-app
