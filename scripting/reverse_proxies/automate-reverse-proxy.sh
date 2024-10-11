#!/bin/bash

# Update package list and install Nginx if not already installed
echo "Updating package list and installing Nginx..."
sudo apt-get update -y && sudo apt-get install nginx -y
echo "Nginx installation complete."

# Backup the existing Nginx configuration
echo "Backing up the existing Nginx configuration..."
sudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
echo "Backup complete."

# Check if the reverse proxy configuration already exists
if ! grep -q "proxy_pass" /etc/nginx/sites-available/default; then
    echo "Configuring Nginx reverse proxy..."
    
    # Append the reverse proxy configuration to the server block
    sudo sed -i 's|try_files $uri $uri/ =404;|proxy_pass http://localhost:3000;|' /etc/nginx/sites-available/default

    echo "Reverse proxy configuration added."
else
    echo "Reverse proxy configuration already exists."
fi

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
