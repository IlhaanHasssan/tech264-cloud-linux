# ***VIRTUAL MACHINE***
- [***VIRTUAL MACHINE***](#virtual-machine)
- [***What is a virtual machine?***](#what-is-a-virtual-machine)
- [***Architecture of a virtual machine?***](#architecture-of-a-virtual-machine)
    - [1. **Region**](#1-region)
    - [2. **Resource Group**](#2-resource-group)
    - [3. **Virtual Network (VNet)**](#3-virtual-network-vnet)
    - [4. **Subnet**](#4-subnet)
    - [5. **Virtual Machine (VM)**](#5-virtual-machine-vm)
    - [6. **Disk**](#6-disk)
    - [7. **Network Interface Controller (NIC)**](#7-network-interface-controller-nic)
    - [8. **Public IP**](#8-public-ip)
    - [9. **Network Security Group (NSG)**](#9-network-security-group-nsg)
    - [10. **NSG Rules**](#10-nsg-rules)
    - [11. **SSH Key**](#11-ssh-key)
- [***How to create a VM in Azure:***](#how-to-create-a-vm-in-azure)
    - [Basics:](#basics)
    - [Disks:](#disks)
    - [Networking:](#networking)
    - [Tags:](#tags)
    - [Review and Create:](#review-and-create)
- [***How to connect your VM via SSH:***](#how-to-connect-your-vm-via-ssh)
# ***What is a virtual machine?***
   - A virtual machine (VM) is essentially a computer within a computer. It’s a software-based simulation of a physical computer that runs an operating system (OS) and applications just like a physical computer does

# ***Architecture of a virtual machine?***



### 1. **Region**
   - A geographical area where your resources are deployed. Virtual machines and other cloud resources are hosted in specific regions. Choosing a region close to your users can improve performance and comply with regulations.

### 2. **Resource Group**
   - A logical container that holds related resources for an application. It allows you to manage and organize your resources, like Virtual Machines, VNets, and disks, in one place.

### 3. **Virtual Network (VNet)**
   - A virtualized network within the cloud environment that provides a secure and isolated space for resources, including virtual machines. It allows communication between resources and can be divided into subnets.

### 4. **Subnet**
   - A range of IP addresses within a VNet. Subnets allow for better network organization and isolation by separating resources into different network segments.

### 5. **Virtual Machine (VM)**
   - A virtualized instance of a computer that runs an operating system and applications. It uses allocated resources like CPU, memory, storage, and network access. The VM is the core component that runs applications within the cloud environment.

### 6. **Disk**
   - Virtual disks are used to store the operating system, applications, and data for the virtual machine. Disks can be attached to VMs and come in different types (standard or premium) depending on performance needs.

### 7. **Network Interface Controller (NIC)**
   - A virtual network adapter that allows the VM to communicate over the VNet. The NIC connects the VM to a subnet, providing it with an IP address and enabling network traffic.

### 8. **Public IP**
   - An IP address that allows the virtual machine to be accessed from outside the cloud network, such as over the internet. This is essential for exposing services to external users or systems.

### 9. **Network Security Group (NSG)**
   - A set of security rules that control inbound and outbound network traffic to and from resources like virtual machines. NSGs are attached to NICs or subnets and help secure your VMs by allowing or blocking traffic based on rules.

### 10. **NSG Rules**
   - Individual rules within a Network Security Group that define allowed or denied traffic. These rules typically specify source/destination IPs, ports, and protocols (e.g., HTTP, SSH).

### 11. **SSH Key**
   - A secure way to authenticate to the virtual machine. SSH keys are used to log into a Linux-based VM securely without using a password, enhancing security through public-private key encryption.

# ***How to create a VM in Azure:***
### Basics: 
1. **log in** to Azure Portal via https://portal.azure.com/#home
1. **Search** for Virtual Machine on the Azure Portal. Create a new VM.
2. **Assign** resource group `(tech264)`.
3. **Name** the VM `tech264-ilhaan-first-vm`
4. Set **region** to `(Europe) UK South`.
5. Change **availability** to "No infrastructure redudancy required".
6. Change **image** to the OS we want on the disc (Also includes flavour and version of the OS, with stuff installed and ready to run - Basically a snapshot of a system). In our case, select `Ubuntu Pro 18.04 - x64 Gen2`. If it is not visible in the immediate recent, click "See all images" and search for it.
7. Change **security type** to standard.
8. Change **size** to `Standard_Bs1 - 1 vcpu, 1 GiB memory`. Select "see all sizes" if not seen in immediate recent.
9. Change **username** to to something more secure. `adminuser`
10. Change SSH public key source to `Use existing key stored in Azure`.
11. Select **your** Stored key (e.g tech264..).
12. Under **select inbound ports**. Both `SHH (22)` and `HTTP (80)` should be selected. You need to set up a certificate to use `HHTPS (443)`.
 
### Disks:
1. Change OS Disk type to `Standard SSD (locally redundant storage)`.
 
### Networking:
1. Change the **virtual network** to your own one, as it will default alphabetically.
2. Change **subnet** to `public-subnet`.
3. Enable **Delete public IP and NIC when VM is deleted**. Automates this just in case you forget to do it yourself.
 
###  Tags:
1. Select `Owner : (your name)` to create your tag.
 
### Review and Create:
1. Make sure all your details are correct.

# ***How to connect your VM via SSH:***

   1. **Start** your virtual machine.
   2. Navigate to "Connect" under your VM.
   3. Find "Native SSH" and **select** it. A side panel should open.
   4. Input `~/.ssh/` and your `private key name` into the "Copy and Execute SSH Command" line. This will output a command for us to use in our CL (We are using **GitBash**).
   5. Click the copy button for the code below what was just inputted.
   6. Paste this code into your **GitBash**.
   7. A **warning** will come out once entered into your **GitBash**. Respond with `yes` and then it will permanently save the IP address, meaning we will not be given the warning again.
   8. You can type `exit` to **logout** of the Virtual Machine.
