#!/bin/bash
# start_apache.sh

# Enable Apache to start on boot
sudo systemctl enable httpd

sudo yum update
# Start Apache service
sudo systemctl start httpd

# Check Apache service status
sudo systemctl status httpd

# Add permissions
sudo chown -R ec2-user:ec2-user /home/ec2-user/my-react-app

#!/bin/bash
cd /home/ec2-user/my-react-app


npm install react-scripts --save


npm run start  # Or use pm2 to run your React app in the background