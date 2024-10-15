# ***3 SUBNET 2-TIER ARCHITECTURE***
- [***3 SUBNET 2-TIER ARCHITECTURE***](#3-subnet-2-tier-architecture)
  - [***What is a DMZ subent***](#what-is-a-dmz-subent)
  - [***Why Use a DMZ Subnet?***](#why-use-a-dmz-subnet)
  - [Typical DMZ Architecture](#typical-dmz-architecture)
  - [***Re-create the 3-subnet architecture to make the database private***](#re-create-the-3-subnet-architecture-to-make-the-database-private)
  - [***Set up the Virtual Network***](#set-up-the-virtual-network)
    - [***Basics***](#basics)
    - [***IP addresses***](#ip-addresses)
    - [***Tags***](#tags)
    - [***Review and Create***](#review-and-create)
  - [***Step 1: Create Database VM***](#step-1-create-database-vm)
    - [***Basics***](#basics-1)
    - [***Review and Create***](#review-and-create-1)
  - [***Step 2: Create the App VM***](#step-2-create-the-app-vm)
    - [***Basics***](#basics-2)
    - [***Networking***](#networking)
    - [***Advanced***](#advanced)
    - [***Review and Create***](#review-and-create-2)
  - [***Step 3: Create the NVA VM***](#step-3-create-the-nva-vm)
    - [***Basics***](#basics-3)
    - [***Networking***](#networking-1)
    - [***Review and Create***](#review-and-create-3)
  - [***Route Tables***](#route-tables)
    - [***Review and Create***](#review-and-create-4)
    - [***Routes under Settings***](#routes-under-settings)
    - [***Subnet under Settings***](#subnet-under-settings)
    - [***Network Settings under Networking for your NVA***](#network-settings-under-networking-for-your-nva)
    - [***Now, we have to enable it on Linux***](#now-we-have-to-enable-it-on-linux)
  - [***Creating IP Table Rules***](#creating-ip-table-rules)
  - [***Set Network Security Group Rules***](#set-network-security-group-rules)
  - [***Create a rule to deny everything else***](#create-a-rule-to-deny-everything-else)
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
   - 3-subnet architecture is more secure than 2 tier architecture as it adds a layer of security and control. The DMZ subnet acts as an intermediary between the public and private subnets. It contains NVAs such as load balancer or firewall, which inspect traffic before allowing it to pass between the public and private subnets. Think of it as a doorman at a club. If the big fella doesn't like what he (or she, go girl) sees, he's not letting you in.
 
## ***Set up the Virtual Network***
 
### ***Basics***
1. Name appropriately (tech264-name-in-3-subnet-vnet)
 
### ***IP addresses***
1. Edit **default subnet**, rename to **public-subnet** and change **starting address** to `10.0.2.0`.
2. Add a new subnet, rename to dmz-subnet and change **starting address** to `10.0.3.0`.
3. Add another new subnet for private subnet, rename to private-subnet and change **starting address** to` 10.0.4.0` and enable **private subnet**. This means that whatever you put in this subnet cannot access the internet.
 
### ***Tags***
1. Select owner and your name.
 
### ***Review and Create***
1. **Ensure** you've selected the correct options.
2. **Create** your shiny new secure virtual network.
 
## ***Step 1: Create Database VM***
Now we create a virtual machine using our database image. We start with the database as we follow the 2-tier architecture sructure.
 
Follow the usual **DATABASE** steps with these slight changes...
 
### ***Basics***
1. Select **zone 3** for avaialiblity zone assigned to the DB.
2. Select the previously created virtual network and select the private subnet. 10.0.4.0
3. Disable public IP address.
4. Only enable **SSH port**.
 
### ***Review and Create***
1. **Ensure** you've selected the correct options.
2. **Create** your shiny new DB.
 
Once this is done, we create the application that will connect to the database and display the information.
 
## ***Step 2: Create the App VM***
Follow the usual **APP** steps with these slight changes...
 
### ***Basics***
1. Select **zone 1** for avaialiblity zone assigned to the App.
 
### ***Networking***
1. Select public subnet.
 
### ***Advanced***
1. Enable **user data** and input your `image script` (script you use to run the image).
2. Change the **IP** in the **export line** to the **private IP** of the **DB** we created previously.
 
### ***Review and Create***
1. **Ensure** you've selected the correct options.
2. **Create** your shiny new App.
 
We can use `ping 10.0.4.4` to ensure the connection between app and the database have been established and are working. To do this, `ssh` into the app VM and input the command.
 
## ***Step 3: Create the NVA VM***
Now we create the VM for the Network Virtual Appliance (NVA). This performs network functions like routing, firewalling, trafic filtering and load balancing.
 
### ***Basics***
1. Name it appropriately (tech264-name-in-3-subnet-nva).
2. Select **zone 2** for avaialiblity zone assigned to the NVA.
3. Select **Standard security** as it may have changed.
4. Select **see all images** and find the **clean-image**.
5. Leave SSH as the only port.
 
### ***Networking***
1. Use the **DMZ subnet**.
2. Leave the public IP initially. later on if we used in production, we wouldn't.
 
### ***Review and Create***
1. **Ensure** you've selected the correct options.
2. **Create** your shiny new NVA.
 
## ***Route Tables***
Used to define how network traffic is directed within a network and between different networks.
 
1. Select **tech264** resource group.
2. For **Region**, Select **UK South**.
 
### ***Review and Create***
1. **Ensure** you've selected the correct options. There isn't really much here, really.
2. **Create** your shiny new Route table.
 
Once it's created, navigate to the resource.
 
### ***Routes under Settings***
2. Click **Routes**.
3. Click **Add**.
4. For the **route name**, input `to-private-subnet-route`.
5. For the **destination type**, select **IP addresses**.
6. For **Destination IP addresses/CIDR ranges**, we use the private subnet: `10.0.4.0/24`.
7. For the next **hop type**, select **Virtual appliance**.
8. For the next **hop address** input the **IP** of the NVA: `10.0.3.4`.
9. Select **Add**.
 
Now we need to associate the route table to where the traffic comes out of.
 
### ***Subnet under Settings***
1. Click **Associate**.
1. Choose your virtual network.
2. Select the **public-subnet**.
 
### ***Network Settings under Networking for your NVA***
1. Select the **Network Interface / IP configuration** link.
2. Enable **IP forwarding** and click **Apply**.
 
### ***Now, we have to enable it on Linux***
***Remember!** you need to update and upgrade on new VMs.*
 
1. **SSH** into your **NVA**.
2. Input `sysctl net.ipv4.ip_foward` to check if IP forwarding is enabled. If it reads **0**, it's false.
3. Input `sudo nano /etc/sysctl.conf` to enter the config file where we can enable it.
4. You will need to uncomment the line to enable it. Ensure you do the correct **IPv type**. In our case, it's **IPv4**.
  
5. If you run another check, it'll read as 0 still. So, we need to apply to configuration file changes by reloading it. We can use `sudo sysctl -p`. It will then print that the setting has been changed.
 
If your `ping (DB Private IP)` command was running on another window, you'll see that it has resumed, meaning the packets are now being forwarded to the DB VM through the NVA. This also shows that the route table is working correctly.
 
## ***Creating IP Table Rules***
We need a script that will contain the rules we're going to set. SSH into your NVA.
 
1. Create a file called `nano config-ip-tables.sh`, where will write the script.
2. Write the script.

[Config IP table script](/tech264-cloud-linux/cloud/config-ip-tables.sh) 

***Sidenote! What these flags / options mean:***
 
`-A` : Stands for "Append." It adds a new rule to the end of a specified chain (e.g., INPUT, OUTPUT, FORWARD).
 
`-i` : Stands for "Input interface." It specifies the network interface for incoming traffic.
 
`-o` : Stands for "Output interface." It specifies the network interface for outgoing traffic.
 
`-p` : Stands for "Protocol." It specifies the protocol used (e.g., TCP, UDP, ICMP).
 
`--dport` : Stands for "Destination port." It specifies the port number for incoming traffic.
 
`--sport` : Stands for "Source port." It specifies the port number for outgoing traffic.
 
`-m` : Stands for "Match." It specifies a module that provides additional matching criteria (e.g., state, conntrack).
 
`--state` : Used with the -m state module to specify the state of the connection (e.g., NEW, ESTABLISHED, RELATED, INVALID).
 
`-j` : Stands for "Jump." It specifies the target action to take when a rule matches (e.g., ACCEPT, DROP, REJECT).
 
3. Grant yourself execute permissions using `chmod +x config-ip-tables.sh`. You can `ls` and see if it's green. If it is, you can execute it.
4. Run your script with `./config-ip-tables.sh`.
 
## ***Set Network Security Group Rules***
1. Navigate to your **DB virtual machine**.
2. Go to **Network Settings** under **Networking**.
3. Click the `tech264-kagan-in-3-subnet-vnet-vm-nsg` link next to **Network security group**.
4. Go to **inbound port rules** and click **Add**.
5. Under **Source**, select **IP addresses**.
6. Under **Source IP addresses/CIDR ranges**, input the **public subnet IP** `10.0.2.0/24`.
7. Change the service to MongoDB.
8. Change the name appropriately.
 
## ***Create a rule to deny everything else***
1. **Add** another rule.
2. Input a `*` to the **destination port ranges**.
3. Change the priority to `500`.
 
*That's it! You've officially secured your app with a DMZ layer. Good stuff. Now delete it all.*