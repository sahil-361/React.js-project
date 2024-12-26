#!/bin/bash
# install_apache.sh

# Update package list
sudo yum update -y

# Install Apache2 (httpd)
sudo yum install -y httpd

# Enable Apache to start on boot
sudo systemctl enable httpd

# Start Apache service
sudo systemctl start httpd

# Install Node.js and npm (Amazon Linux 2023 package)
sudo yum install -y nodejs

# Verify Node.js and npm installation
node -v
npm -v


# (Optional) Navigate to your React app directory if required and install dependencies
# cd /path/to/your/react-app
# sudo npm install

# Optionally, you can also run npm install in case it's needed
# npm install

# Print message indicating successful installation
echo "Apache and Node.js installation complete!"
