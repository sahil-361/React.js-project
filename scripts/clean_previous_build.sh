#!/bin/bash
#!/bin/bash
echo "Cleaning previous build..."
sudo rm -rf /home/ec2-user/my-react-app/*

#!/bin/bash
# Stop Apache service (if running)
sudo systemctl stop httpd || true
