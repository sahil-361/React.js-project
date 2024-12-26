#!/bin/bash
# start_apache.sh

# Start Apache service
sudo systemctl start httpd

# Check Apache service status
sudo systemctl status httpd
-
#!/bin/bash
cd /home/ec2-user/my-react-app
npm run start  # Or use pm2 to run your React app in the background