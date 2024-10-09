#!/bin/bash

# Defining environment variable
echo "Defining environment variable..."
export DB_HOST=mongodb://10.0.3.4:27017/posts
echo "Done!"

# Update sources list
echo "Updating sources list..."
sudo apt-get update -y
echo "Done!"

# Upgrade any packages available
echo "Upgrading installed packages..."
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
echo "Done!"

# Install Nginx
echo "Installing Nginx..."
sudo DEBIAN_FRONTEND=noninteractive apt-get install nginx -y
echo "Done!"

# Install Node.js v20
echo "Installing Node.js v20..."
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - && \
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs
echo "Done!"

# Check Node.js version
echo "Checking Node.js version..."
node -v
echo "Done!"

# Cloning GitHub repository
echo "Cloning GitHub repository..."
git clone https://github.com/AdonisAlgos/tech264-sparta-app.git
echo "Done!"

# Changing directories to the app folder
echo "Changing directories to the app folder..."
cd ~/tech264-sparta-app/app
echo "Done!"

# Installing app packages and dependencies
echo "Installing app packages and dependencies..."
npm install
echo "Done!"

node app.js &
