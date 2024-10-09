# Manual reverse proxy 🔀
- create a backup of the file you want change:
- `sudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak`
 -  nano into the file:
- `sudo nano /etc/nginx/sites-available/default`
- check if the config syntax is correct:
- `sudo nginx -t`
- creates a link to the localhost:3000
     `proxy_pass http://localhost:3000;`
- restart nginx to include new changes 
- `sudo systemctl restart nginx`