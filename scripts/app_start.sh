#!/bin/bash
# start_apache.sh

# Start Apache service
sudo systemctl start httpd

# Check Apache service status
sudo systemctl status httpd
-
#!/bin/bash
cd /home/ec2-user/my-react-app

pm2 delete all

pm2 start "npm start"  # Or use pm2 to run your React app in the background