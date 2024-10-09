# ***Ports***

## ***Port in use error***
![alt text](port-in-use.png)
-  You get the error because you are trying to get a second app instance to use port 3000 but it's already in use by the first app instance
-  ### Solution
   -  finds which process is running on port 3000
      -  `sudo lsof -i :3000`
   - kill the process, with brute force only if necessary.
     - `sudo kill -9 <PID>`
   - Re-run your app to check if it can now run on port 3000 which should be free
     - `node app.js`
 


