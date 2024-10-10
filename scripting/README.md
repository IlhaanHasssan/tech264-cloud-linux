# Scripting

(use shift + ctrl + P to create 'Table of Contents')
- [Scripting](#scripting)
  - [Scripting vs Programming 🖥️](#scripting-vs-programming-️)
    - [Similarities🤞:](#similarities)
    - [Differences✌️:](#differences️)
      - [Complexity](#complexity)
      - [Purpose/Intent](#purposeintent)
      - [Execution](#execution)
      - [Development Cycle](#development-cycle)
      - [Learning Curve](#learning-curve)
  - [Running Python Scripts in the CLI:🐍](#running-python-scripts-in-the-cli)
      - [What is sys.argv?](#what-is-sysargv)
      - [How Does It Work?](#how-does-it-work)
      - [What Happens:](#what-happens)
      - [Summary](#summary)
  - [Writing our first script:📜](#writing-our-first-script)
  - [Ubuntu Pro 22.04 Gen 2 Script:📜](#ubuntu-pro-2204-gen-2-script)
    - [Installing MongoDB and running our DB:📅](#installing-mongodb-and-running-our-db)
  - [Item potentcy 🧪](#item-potentcy-)
  - [Creating a script for new  App VM:📜](#creating-a-script-for-new--app-vm)
  - [Creating a script for new DB VM:📜](#creating-a-script-for-new-db-vm)

## Scripting vs Programming 🖥️
### Similarities🤞:
   - Both involve writing code to solve problems and can share similar syntax and concepts across languages.
   - Both can be used in various contexts, such as web development, data processing, and system automation.
   - Many languages blur the lines between scripting and programming, allowing for both simple and complex applications.
   - 
### Differences✌️:

- Scripting is a type of programming so they often overlap, though they differ in meaning and application.
  
  #### Complexity
    - Scripting: Generally involves simpler logic and is often focused on specific tasks. Scripts can be short and straightforward.
    - Programming: Typically requires more intricate logic, data structures, and algorithms. It often involves handling larger codebases and architecture.
  #### Purpose/Intent
    - Scripting: Primarily used for automating tasks, manipulating files, config management and controlling applications. Often aims for quick solutions.
    - Programming: Designed for creating larger, more complex software applications or systems that may involve multiple components and user interfaces.
  #### Execution
    - Scripting: Usually interpreted, meaning code is executed line by line at runtime, which can allow for rapid testing and debugging.
    - Programming: Often compiled into machine code before execution, leading to optimized performance but potentially longer development times.
  #### Development Cycle
    - Scripting: Often involves shorter development cycles. Scripts can be written and tested quickly, allowing for rapid iteration.
    - Programming: Usually involves longer development cycles, including phases like planning, design, implementation, testing, and deployment. More extensive testing and debugging may be required.

  #### Learning Curve
    - Scripting: Tends to have a gentler learning curve, making it accessible for beginners. Many scripting languages are designed to be user-friendly and intuitive.
    - Programming: Can have a steeper learning curve due to the need to understand more complex concepts, algorithms, and data structures.

## Running Python Scripts in the CLI:🐍


#### What is sys.argv?
```sys``` Module: This is a built-in module in Python that provides access to some variables used or maintained by the Python interpreter. To use it, you need to import it with import sys.

```argv```: This stands for "argument vector." It is a list that contains the command-line arguments passed to the script.

#### How Does It Work?
When You Run a Script:

 - When you execute a Python script from the command line, you can pass additional information (arguments) along with the script name.

#### What Happens:

The sys.argv list will contain the script name and the arguments you provided.

- In the example above:

  - sys.argv[0] will be 'my_script.py' (the name of your script).

  - sys.argv[1] will be 'arg1' (the first argument).

  - sys.argv[2] will be 'arg2' (the second argument).
  

```python 
import sys 
# you have to import the sys module to pass arguments to your script
# index shows which argument will be printed
# Check for arguments
if len(sys.argv) > 1:
    print("You gave me an argument")
    print("Print argument with index 0:", sys.argv[0]) 
    print("Print argument with index 1:", sys.argv[1])
else:
    print("You gave me no argument")
    print("Print argument with index 0:", sys.argv[0])
```
To run a python script in the command line:
```python   
python <file_name> arg1 arg2
```

#### Summary
 - sys.argv is a list that contains the name of the script and any arguments you pass to it.
- Indexing: sys.argv[0] is always the script name, and subsequent indices contain the arguments.
- This allows your script to take input from the command line, making it more flexible and interactive!


## Writing our first script:📜
- Always test your commands manually first to ensure no user input is required.
- `nano provision.sh` - to create a new file called provision.sh
  - `#!/bin/bash` - shows location of bash script required to run commands (called "shabang").
- updates packages
  - `sudo apt update -y`
- upgrades packages
  - `sudo apt upgrade -y`
- install nginx - webserver
  - `sudo apt install nginx -y`
  - `sudo systemctl status nginx` - checks if nginx is running.
  - copy your IP address from your VM, check that it works when accessing through HTTP
- restart nginx
  - `sudo systemctl restart nginx`
- enable nginx - going to automatically start when VM starts
  - `sudo systemctl enable nginx`
- `chmod +x provision.sh` - add execute permissions to your file
- `./provision.sh` - to execute your script

## Ubuntu Pro 22.04 Gen 2 Script:📜
 ```bash
 #!/bin/bash

echo  update sources list
sudo apt-get update -y
echo Done!

echo upgrade any packages available...
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
echo Done!

echo install nginx...
sudo DEBIAN_FRONTEND=noninteractive apt-get install nginx -y

echo install nodejs v20...
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs
echo Done!

echo check nodejs version....
node -v
```


### Installing MongoDB and running our DB:📅
```bash
sudo apt-get install gnupg curl
#installs gnupg for encyrption and signature verification
#intalls curl for data transfers over various protocols

curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor
# downloads MongoDB's GPG public key, converts it to binary format, and stores it in the system keyring. The GPG key is used to verify the integrity and authenticity of MongoDB packages when they are downloaded and installed from repositories.

echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
#adds the MongoDB repository to your system’s package manager (apt) configuration, allowing you to install MongoDB 7.0. The repository URL and associated GPG key are specified, ensuring the integrity and security of downloaded packages.

sudo apt-get update -y
#updates all packages

sudo DEBIAN_FRONTEND=noninteractive apt-get install -y mongodb-org=7.0.6 mongodb-org-database=7.0.6 mongodb-org-server=7.0.6 mongodb-mongosh=2.1.5 mongodb-org-mongos=7.0.6 mongodb-org-tools=7.0.6
#This command installs MongoDB version 7.0.6 and related tools while ensuring that no prompts interrupt the process (using the DEBIAN_FRONTEND=noninteractive variable). This is often used in automation scripts or when you need to install MongoDB in a non-interactive environment, like a container or CI/CD pipeline.

sudo systemctl start mongod
#starts the MongoDB database server (the mongod service). This ensures that the MongoDB server begins running and can start accepting connections or database operations.

sudo systemctl status mongod
# checks the current status of the MongoDB server service (mongod). This will provide information such as whether the service is active (running), inactive, or failed, along with additional details like the process ID and any recent log messages related to the service.

sudo nano /etc/mongo.conf
  - change BindIP to 0.0.0.0
#opens the MongoDB configuration file for editing. Changing BindIP to 0.0.0.0 allows MongoDB to accept connections from all IP addresses, which can be useful but poses security risks if not managed correctly.

sudo systemctl restart mongod
#effectively stops and then starts the MongoDB server service, allowing any configuration changes to take effect and helping troubleshoot or reset the service as needed.

sudo systemctl is-enabled mongod
#is useful for determining whether the MongoDB service is configured to start automatically when the system boots. This can help administrators ensure that the database is always available after a restart or system update.

sudo systemctl enable mongod
# configures the MongoDB service to start automatically at boot time. This is an important step for ensuring that your MongoDB server is always available when the system is running.

Turn on your app vm and connect using SSH in a new GitBash window

export DB_HOST=mongodb://10.0.3.5:27017/posts
#sets an environment variable DB_HOST that stores the connection string to a MongoDB instance. This allows applications to connect to the specified database easily and consistently.

printenv DB_HOST
#prints the value inside variable DB_HOST

npm install
#used to install the dependencies listed in the package.json file of a Node.js project.

npm start
#It runs the script defined in the start property of the scripts section in package.json. If no start script is defined, it will default to running node server.js (if server.js exists).

```

## Item potentcy 🧪
  - When your script reaches the desired state no matter how many times it runs

## Creating a script for new  App VM:📜

[APP SCRIPT](./prov-app.sh)

## Creating a script for new DB VM:📜

[DB SCRIPT](./dbscript.sh)

  - You can use `sudo cat /var/log/cloud-init-output.log` to check log output for the script when you run it from user data