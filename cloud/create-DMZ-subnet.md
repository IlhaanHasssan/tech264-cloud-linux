# ***DMZ subnet***
- [***DMZ subnet***](#dmz-subnet)
  - [***What is a DMZ subent***](#what-is-a-dmz-subent)
  - [***Why Use a DMZ Subnet?***](#why-use-a-dmz-subnet)
  - [Typical DMZ Architecture](#typical-dmz-architecture)
  - [***Re-create the 3-subnet architecture to make the database private***](#re-create-the-3-subnet-architecture-to-make-the-database-private)
    - [Set up the Virtual Network](#set-up-the-virtual-network)
      - [--\> Basics](#---basics)
      - [--\> IP addresses](#---ip-addresses)
      - [--\> Tags](#---tags)
      - [--\> Review and Create](#---review-and-create)
    - [Create Database VM](#create-database-vm)
      - [--\> Basics](#---basics-1)
      - [--\> Review and Create](#---review-and-create-1)
    - [Create the App VM](#create-the-app-vm)
      - [--\> Basics](#---basics-2)
      - [--\> Networking](#---networking)
      - [--\> Advanced](#---advanced)
      - [--\> Review and Create](#---review-and-create-2)
    - [Create a virtual machine for the NVA.](#create-a-virtual-machine-for-the-nva)
      - [--\> Basics](#---basics-3)
      - [--\> Networking](#---networking-1)
      - [--\> Review and Create](#---review-and-create-3)
## ***What is a DMZ subent***

  - A DMZ (Demilitarized Zone) subnet** is a section of a network that is isolated from an organization's internal network but is accessible from external networks like the internet. It serves as a buffer zone between the public internet and the private internal network, offering an additional layer of security by segregating services that are exposed to the internet from the more sensitive internal network.

## ***Why Use a DMZ Subnet?***

1. ***Enhanced Security***:
   - By placing publicly accessible servers (like web, mail, or FTP servers) in a DMZ subnet, these servers are isolated from the internal network, reducing the risk of attackers gaining access to sensitive internal systems in case the public-facing servers are compromised.

2. ***Controlled Access***:
   - Access to the DMZ subnet from the internet and from the internal network can be tightly controlled using firewalls. External users can access services in the DMZ, but access to the internal network is blocked or limited to specific traffic.

3. **Traffic Segregation**:
   - A DMZ allows an organization to segment traffic types. Internet-facing services are kept separate from internal services, reducing the chances of a security breach spreading from public servers to internal assets.

## Typical DMZ Architecture

- **Firewalls**:
   - There are usually two firewalls in a DMZ configuration:
     - **Outer Firewall**: Protects the DMZ from the internet, allowing only certain traffic types (e.g., HTTP or HTTPS) to reach servers in the DMZ.
     - **Inner Firewall**: Protects the internal network from the DMZ, permitting limited communication between the internal network and DMZ servers (e.g., database queries or management traffic).

- **DMZ Servers**:
   - Servers placed in the DMZ are typically those that need to interact with external clients or users, such as:
     - Web servers
     - Email servers
     - FTP servers
     - Application servers
**


## ***Re-create the 3-subnet architecture to make the database private***
 
### Set up the Virtual Network
 
#### --> Basics
1. Name appropriately (tech264-name-in-3-subnet-vnet-db-vm)
 
#### --> IP addresses
1. Edit **default subnet**, rename to **public-subnet** and change **starting address** to `10.0.1.0`.
2. Add a new subnet, rename to dmz-subnet and change **starting address** to `10.0.3.0`.
3. Add another new subnet for private subnet, rename to private-subnet and change **starting address** to` 10.0.4.0` and enable **private subnet**. This means that whatever you put in this subnet cannot access the internet.
 
#### --> Tags
1. Select owner and your name.
 
#### --> Review and Create
1. **Ensure** you've selected the correct options.
2. **Create** your shiny new secure virtual network.
 
Then we create a virtual machine using our database image. We start with the database as we follow the 2-tier architecture sructure.
 
### Create Database VM
Follow the usual **DATABASE** steps with these slight changes...
 
#### --> Basics
1. Select **zone 3** for avaialiblity zone assigned to the DB.
2. Select the previously created virtual network and select the private subnet. 10.0.4.0
3. Disable public IP address.
4. Only enable **SSH port**.
 
#### --> Review and Create
1. **Ensure** you've selected the correct options.
2. **Create** your shiny new DB.
 
Once this is done, we create the application that will connect to the database and display the information.
 
### Create the App VM
Follow the usual **APP** steps with these slight changes...
 
#### --> Basics
1. Select **zone 1** for avaialiblity zone assigned to the App.
 
#### --> Networking
1. Select public subnet.
 
#### --> Advanced
1. Enable **user data** and input your `image script` (script you use to run the image).
2. Change the **IP** in the **export line** to the **private IP** of the **DB** we created previously.
 
#### --> Review and Create
1. **Ensure** you've selected the correct options.
2. **Create** your shiny new App.
 
Now we create the VM for the Network Virtual Appliance (NVA). This performs network functions like routing, firewalling, trafic filtering and load balancing.
 
### Create a virtual machine for the NVA.
 
#### --> Basics
1. Name it appropriately (tech264-name-in-3-subnet-nva).
2. Select **zone 2** for avaialiblity zone assigned to the NVA.
3. Select **Standard security** as it may have changed.
4. Select **see all images** and find the **clean-image**.
5. Leave SSH as the only port.
 
#### --> Networking
1. Use the **DMZ subnet**.
2. Leave the public IP initially. later on if we used in production, we wouldn't.
 
#### --> Review and Create
1. **Ensure** you've selected the correct options.
2. **Create** your shiny new NVA.
 
 
Please double check this is all right before u take it because he gave us a loooot of information
has context menu