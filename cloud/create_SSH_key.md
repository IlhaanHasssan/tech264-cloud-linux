# ***SSH KEYS***
- [***SSH KEYS***](#ssh-keys)
- [***SSH Key Generation and Usage***](#ssh-key-generation-and-usage)
  - [***Steps to Create an SSH Key***](#steps-to-create-an-ssh-key)
  - [***Add your SSH key to Azure portal***](#add-your-ssh-key-to-azure-portal)
  - [***Security Settings for SSH Key in Azure Portal***](#security-settings-for-ssh-key-in-azure-portal)

# ***SSH Key Generation and Usage***
This guide outlines the steps to create and manage SSH keys, as well as how to add the public key to the Azure portal.

## ***Steps to Create an SSH Key***

1. Navigate to the Home Directory:
- Open a terminal or command line and cd into home directory
```bash
cd .
```
2. Check for an Existing **`.ssh`** Folder
The **`.ssh`** directory stores SSH keys and configurations.
```bash
ls -a
```
- This should show you all files including the hidden . files like .ssh/ and .git/
3. If it doesn't exist, you can create it using 
```bash 
mkdir .ssh
```
4. **`-cd`** into the .ssh folder
5. use **`pwd`** to check this: output should be **`/c/Users/<home_directory_name/.ssh>`**
6.  Run command: **`ssh-keygen -t rsa -b 4096 -C "your_email"`** your key pair.
- **`-t rsa`**: Specifies that the RSA algorithm will be used.
- **`-b 4096`**: Sets the key size to 4096 bits for better security.
- **`-C "youremail@hotmail.com"`**: Adds a comment (your email) to help identify the key
7. You will get a prompt: **`Enter file in which to save the key: `**
8. Specify a custom file name for your key:  **`tech264-ilhaan-az-key`**
9. It will ask for a passphrase: you can just press enter for an empty passphrase
10.  Output should be:
```bash
Your identification has been saved in /Users/<your_home_directory>/.ssh/tech264-ilhaan-az-key.
Your public key has been saved in /Users/<your_home_directory>/.ssh/tech264-ilhaan-az-key.pub. 
```

11.   To print the content of your public key to the terminal **`cat tech264-ilhaan-az-key.pub`** *Ensure it is your PUBLIC key which is the file ending in **`.pub`**
    

## ***Add your SSH key to Azure portal***

1.  Log in to your Azure Portal (using Sparta Global credentials)
2.  Type ***"SSH Keys"*** into search bar
3.  Name your SSH key to reflect the name in your local machine
4.  Paste your long SSH key(output of **`cat`** command) from the terminal into the SSH key box in Azure
5.  Ensure you have selected the correct resource group, location and formation eg: 
   ***'tech264', UK South, RSA***

## ***Security Settings for SSH Key in Azure Portal***
- You don't want just anyone attempting to SSH into your machine.
- Your PublicIP will change if you switch off your Wi-Fi router so you will have to reset.
1. Log into Azure Portal
2. Find your VM's netwrok security group
3. Find your inbound port rules
4. change SSH source from "Any" to "My IP Address"
- Organisations usually use Bastion servers in production
- In a low-use production server, you can deny access to avoid security risks. 