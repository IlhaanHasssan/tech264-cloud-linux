# Automate a reverse proxy:

- [Automate a reverse proxy:](#automate-a-reverse-proxy)
  - [Steps to Modify Nginx Configuration Using sed](#steps-to-modify-nginx-configuration-using-sed)


## Steps to Modify Nginx Configuration Using sed
1. Install Nginx: Ensure Nginx is installed.
2. Backup Existing Configuration: It’s a good practice to back up the existing configuration before making changes.
```bash
sudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
```
3. Use sed to Add or Modify the Configuration: Append or modify the necessary configuration for the reverse proxy.
```bash
# Append the reverse proxy configuration to the server block
sudo sed -i '/server_name _;/a \    location / {\n        proxy_pass http://localhost:3000;\n    }' /etc/nginx/sites-available/default
```
4. Restart Nginx: Restart the Nginx service to apply changes.

    `sudo systemctl restart nginx`