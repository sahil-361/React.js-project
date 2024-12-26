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

# Install dependencies
npm install

# Build the React app
npm run build

# Ensure the build directory exists
if [ ! -d "build" ]; then
  echo "Build directory not found. Something went wrong with the build process."
  exit 1
fi

# Copy the React build to the Apache web root
sudo cp -r build/* /var/www/html/

# Give proper permissions to Apache
sudo chown -R apache:apache /var/www/html/
