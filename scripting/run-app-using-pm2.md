# ***Run Sparta app in the background***
- [***Run Sparta app in the background***](#run-sparta-app-in-the-background)
    - [Running, stopping and re-starting the app in the background:](#running-stopping-and-re-starting-the-app-in-the-background)
    - [One way we can use pm2](#one-way-we-can-use-pm2)
    - [If time: One other way (can you find another package manager do it like pm2?)](#if-time-one-other-way-can-you-find-another-package-manager-do-it-like-pm2)
    - [Using \&:](#using-)

### Running, stopping and re-starting the app in the background:
 
### One way we can use pm2
`pm2` : A production process manager that allows you to run your apps in the background, keep them alive (restart automatically if they crash), monitor performance, and handle logs.
 
`pm2 start npm -- start` : Tells PM2 to start a new process using the npm command to execute the start script defined in your package.json. It launches your Node.js application in the background
 
`pm2 stop npm` :  If you have multiple processes managed by PM2 that were started with the npm -- start, you can stop them all using this command. This effectively halts the application, but does not remove it from PM2's process list.
 
`pm2 restart npm` : This command restarts the running process associated with the npm command. PM2 will first stop the current instance and then start it again, ensuring any updates or changes are applied.
 
Don't forget to install PM2 in your script using `sudo npm install -g pm2`. The `-g` installs this globally, meaning we can access PM2 from any terminal window without needing to be in a specific project directory.
 
### If time: One other way (can you find another package manager do it like pm2?)
Research `forever` or `screen`
 
### Using &:
- You should have already used "&" at the end of your script using `&`command to run the app in the background 
  - `node app.js`
- the issue with stopping and re-starting ia that you have to kill the app process and then run it again if you want to sto or re-start when using `&`