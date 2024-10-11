# ***Automate a reverse proxy:***

- [***Automate a reverse proxy:***](#automate-a-reverse-proxy)
  - [***Steps to Modify Nginx Configuration Using `sed`***](#steps-to-modify-nginx-configuration-using-sed)
  - [***Relevant script***](#relevant-script)


## ***Steps to Modify Nginx Configuration Using `sed`***
1. Install Nginx: Ensure Nginx is installed.
2. Backup Existing Configuration: It’s a good practice to back up the existing configuration before making changes.
```bash
sudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
```
3. Use **`sed`** to Add or Modify the Configuration: Append or modify the necessary configuration for the reverse proxy.
```bash
#Append the reverse proxy configuration to the server block
sudo sed -i 's|try_files $uri $uri/ =404;|proxy_pass http://localhost:3000;|' /etc/nginx/sites-available/default
```
1. Check if the config file has a correct syntax using:
    - **`sudo nginx -t`** 
2. Restart Nginx: Restart the Nginx service to apply changes.
   - **`sudo systemctl restart nginx`**
## ***Relevant script***
   - [Automating reverse proxy script](/tech264-cloud-linux/scripting/automate-reverse-proxy.sh)