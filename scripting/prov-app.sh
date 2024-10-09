#!/bin/bash

# Update sources list
echo "Updating sources list..."
sudo apt-get update -y
echo "Done!"

# Upgrade any packages available
echo "Upgrading installed packages..."
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
echo "Done!"

#Install pm2
sudo npm install pm2 -g
echo PM2 installed!

# Install Nginx
echo "Installing Nginx..."
sudo DEBIAN_FRONTEND=noninteractive apt-get install nginx -y
echo "Done!"

# creates a basic configuration for Nginx to listen on port 80 and forward requests to the application running on port 3000.
sudo sed -i '/server_name _;/a \    location / {\n        proxy_pass http://localhost:3000;\n    }' /etc/nginx/sites-available/default

# Test Nginx configuration for syntax errors
echo "Testing Nginx configuration..."
if sudo nginx -t; then
    echo "Nginx configuration is valid. Restarting Nginx..."
    sudo systemctl restart nginx
    echo "Nginx has been restarted."
else
    echo "Nginx configuration has errors. Please fix them before restarting."
fi

echo "Nginx reverse proxy setup is complete."

# Install Node.js v20
echo "Installing Node.js v20..."
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - && \
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs
echo "Done!"

# Check Node.js version
echo "Checking Node.js version..."
node -v
echo "Done!"

# Defining environment variable
echo "Defining environment variable..."
export DB_HOST=mongodb://10.0.3.4:27017/posts
echo "Done!"


# Cloning GitHub repository
echo "Cloning GitHub repository..."
git clone https://github.com/IlhaanHasssan/tech264-sparta-app.git repo
echo "Done!"

# Changing directories to the app folder
echo "Changing directories to the app folder..."
cd repo/app
echo "Done!"

# Installing app packages and dependencies
echo "Installing app packages and dependencies..."
npm install
echo "Done!"

echo Running the app with PM2...
pm2 stop all  # Stops any previously running processes
pm2 start app.js --name "app"
echo Done!

echo "Setting up PM2 to auto-restart on system reboot..."
pm2 startup systemd
sudo env PATH=$PATH:/usr/bin pm2 startup systemd -u $USER --hp /home/$USER
pm2 save
echo "PM2 is configured to start on boot and auto-restart the app."

pm2 list

# Finished
echo "Provisioning complete. The app is running and will automatically restart on failure or reboot."
