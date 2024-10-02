# What is a virtual machine?
- [What is a virtual machine?](#what-is-a-virtual-machine)
  - [Architecture of a virtual machine?](#architecture-of-a-virtual-machine)
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
- [How to create a VM in Azure:](#how-to-create-a-vm-in-azure)


## Architecture of a virtual machine?



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

# How to create a VM in Azure:
