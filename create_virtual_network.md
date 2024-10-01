# Creating a virtual network
- [Creating a virtual network](#creating-a-virtual-network)
      - [Our Virtual Network Plan Guide:](#our-virtual-network-plan-guide)
      - [Create Subnets](#create-subnets)
        - [Private Subnet Configuration:](#private-subnet-configuration)
        - [Public Subnet Configuration:](#public-subnet-configuration)

## What does a VNet do?
 A Virtual Network (VNet) in Azure allows you to securely connect and isolate resources within your cloud environment. 
 
#### Our Virtual Network Guide:


1. Log in to the Azure Portal. Go to Azure Portal and log in with your Azure credentials.
Navigate to Virtual Networks

2.  In the Azure Portal, search for and select "Virtual networks." Click on "Create" to start creating a new virtual network.

3. Configure the Virtual Network:

- Resource Group: Choose an existing resource group ***tech264***
- Name: Enter a name for your VNet ***tech264-ilhaan-vnet***
- Region: Choose the region where you want to deploy the VNet. ***UK South***
- IP Addresses Tab: Address Space: Enter ***10.0.0.0/16.*** This gives you a total of 65,536 IP addresses to work with.
- Review + Create.  Verify your configurations and click "Create" to provision the virtual network.
#### Create Subnets
1. Select your Virtual Network

2. After the VNet is created, navigate to it in the Azure portal.
3. Create Subnets

4. Click on "+ Subnet" above the IP address box to add a new subnet.
##### Private Subnet Configuration:

- Name: Enter tech264-ilhaan-2-subnet-vnet-private.
- Address range(CIDR Block): Enter 10.0.3.0/24. This allows for 256 addresses in this subnet.
- Click "Add" to create the private subnet.
  
##### Public Subnet Configuration:
- Repeat the process for the public subnet:
- Name: Enter tech264-ilhaan-2-subnet-vnet-public.
- Address range: Enter 10.0.2.0/24. This also allows for 256 addresses.
- Click "Add" to create the public subnet