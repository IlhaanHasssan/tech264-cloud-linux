# ***VIRTUAL MACHINES FROM IMAGES***
- [***VIRTUAL MACHINES FROM IMAGES***](#virtual-machines-from-images)
  - [***What are images?*** 📸](#what-are-images-)
    - [***Types of Images:*** 🎨](#types-of-images-)
  - [***How to create a VM from a custom image with user data:*** 🖼️](#how-to-create-a-vm-from-a-custom-image-with-user-data-️)
  - [***Creating an Image from our VM :*** 🕹️](#creating-an-image-from-our-vm--️)
  - [***Creating Virtual Machines from our custom images:*** 🖥️](#creating-virtual-machines-from-our-custom-images-️)

## ***What are images?*** 📸
  - In Azure, an image refers to a template used to create virtual machines (VMs). An image contains a pre-configured operating system (OS), and sometimes additional software, that allows users to quickly deploy virtual machines with the necessary configurations. Azure offers different types of images for various purposes, including standard images provided by Microsoft and custom images that users can create.
### ***Types of Images:*** 🎨
 - Azure Marketplace Images:
      - These are ready-made images provided by Microsoft, third-party vendors, or open-source communities. They include various operating systems (Windows, Linux distributions like Ubuntu, CentOS, etc.) and software stacks (e.g., SQL Server, WordPress, Jenkins).
      - Example: You can choose an Ubuntu Server image to create a Linux VM or a Windows Server image for a Windows VM.

 - Custom Images:
      - Users can create their own images based on VMs they have set up. These custom images include specific operating system configurations, applications, and settings that the user wants to replicate across multiple VMs.
      - Use case: If you've configured a VM with all the necessary tools and settings for your development team, you can create a custom image of that VM. Then, anyone in your organization can quickly deploy VMs based on that image.

## ***How to create a VM from a custom image with user data:*** 🖼️
1. Log into Azure Portal
2. Select resource group from the home page, select ***tech264***
3. Search for the custom image you would like to use - ***ramon-official-ubuntu2204-clean-image***
4. click into the image, then select ***Create VM***, you should have image selected for you stating ***ramon-official-ubuntu2204-clean-image***
5. Continue creating your DB VM by selecting all the relevant choices (SSH (22) only, private subnet)
6. In the ***Advanced*** tab when creating your DB VM, you should see *enable user data*, select that box and input your [DB script](/tech264-cloud-linux/scripting/dbscript.sh) into the box that appears
   - make sure your script inclues the she-bang
7. Once, you have reviewed and created your VM, it should now run the script automatically, you can test user data has done it's job by SSH'ing into the VM and running **`sudo systemctl status mongod`** and check the bindIP using ***`grep bindIp /etc/mongod.conf
`***
   -   It will probably take a while to load so be patient.
8. Repeat the same steps to create your app VM using the custom image and your [App script](/tech264-cloud-linux/scripting/prov-app.sh) *(SSH (22), HTTP (80), public subnet)*
   - make sure your ***DB_HOST*** variable has the correct ***private IP address***
   - you can use ***`sudo cat /var/log/cloud-init-output.log`***
 `*** to check the output logs in a git bash window when you SSH into your app VM
9.  Your user data should work and you should be able to use the public IP address into a browser **(not chrome)**, you should see the app start page, when you enter ***/posts*** into the browser, you should also be able to see the posts page.

## ***Creating an Image from our VM :*** 🕹️

1. Select **Capture Image** on the VM of choice's **Overview**.
2. Under **Instance details**, Select **No, capture only a managed image**.
3. Enable **Automatically delete this virtual machine after creating the image**.
4. Name image appropiriately ***tech264-ilhaan-ready-to-run-DB-image***.
5. **Before** you select *create*, run ***`sudo waagent -deprovision+user`*** inside our DB SSH to remove/delete information we no longer need, then return to Azure window.
6. Add tags. ***Owner:ilhaan***
7. Review, then create.
8. Re-do all these steps for your app VM to create and app image.

## ***Creating Virtual Machines from our custom images:*** 🖥️
1. Select your custom DB image ***tech264-ilhaan-ready-to-run-DB-image***
2. Select **create VM**
3. Go through the steps to create your DB virtual machine listed here: [create a virtual machine](/tech264-cloud-linux/cloud/create_virtual_machine.md)
4. Re-do the above steps to create a VM from your custom ***app image***
5. ***Before*** you create your vm using your app image, insert your [run app script](/tech264-cloud-linux/scripting/run-app-only.sh) into user data
6. Check the public IP of your app VM to see if scripts are running correctly, you should be able to see the app home page and the */posts* page
