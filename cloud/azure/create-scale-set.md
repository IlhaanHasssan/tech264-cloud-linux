# ***Creating a scale set***
- [***Creating a scale set***](#creating-a-scale-set)
  - [***What is a load balancer***](#what-is-a-load-balancer)
    - [***Why is a Load Balancer Needed?***](#why-is-a-load-balancer-needed)
    - [***Types of Load Balancers***](#types-of-load-balancers)
    - [***Conclusion***](#conclusion)
  - [***How to create a scale set***](#how-to-create-a-scale-set)
  - [***Connect to instance through SSH***](#connect-to-instance-through-ssh)
  - [***Testing the VM Scale Set***](#testing-the-vm-scale-set)
  - [***Diagram of VM Scale Set***](#diagram-of-vm-scale-set)
  - [***Managing Instances***](#managing-instances)
  - [***Deleting a VM Scale Set***](#deleting-a-vm-scale-set)


## ***What is a load balancer***

A **load balancer** is a system that distributes incoming network or application traffic across multiple servers (also known as backend servers or instances). Its primary goal is to ensure that no single server is overwhelmed, which helps improve responsiveness, uptime, and availability of the application or service.

### ***Why is a Load Balancer Needed?***

1. **Improved Performance**:
   - A load balancer can distribute traffic evenly across multiple servers, reducing the load on any one server, which improves overall performance.

2. **High Availability**:
   - Load balancers detect server health through periodic checks (health checks) and route traffic only to healthy servers. If one server goes down, the load balancer redirects traffic to others, ensuring the service remains available.

3. **Scalability**:
   - By adding more servers to the pool behind a load balancer, you can scale applications horizontally to handle increased traffic.

4. **Fault Tolerance**:
   - Load balancers provide redundancy, so even if one or more servers fail, the application will continue to run without interruption.

5. **Efficient Resource Use**:
   - Ensures that servers are utilized efficiently by distributing the workload, preventing under-utilization of some resources while others are overwhelmed.

### ***Types of Load Balancers***
- **Hardware Load Balancers**: Physical devices used in on-premises data centers.
- **Software Load Balancers**: Software solutions that can run on standard servers or cloud environments (e.g., Nginx, HAProxy).
- **Cloud-based Load Balancers**: Managed services offered by cloud providers (e.g., AWS Elastic Load Balancer, Azure Load Balancer).

### ***Conclusion***

A load balancer is a key component for achieving performance, reliability, and scalability in modern applications, especially in distributed or cloud-based environments.


## ***How to create a scale set***
1. Search: VM scale set.
2. Go to 'create'
3. name: tech264-ilhaan-sparta-app-scale-test
4. Availability zones: 3
5. Orchestration mode: Uniform
6. Security type: Standard
7. Scaling: autoscaling
8. Click on 'configure' > click on the pencil > change default condition > max: 3 > CPU threshold 75% > click 'save'.
9. Image : see all images > my images > ilhaan-ready-to-run-app-image >
10. Disks > OS disk type > standard
11. Network > ilhaan-subnet-vnet
12. Network interface: click pen > keep public subnet > allow public inboud ports > HTTP, SSH.
13. Public IP address : because we have a load balancer, we can SSH in through that, therefore we can keep the Public IP address 'disabled' > click 'ok'.
14. Load balancing (underneath above): Azure load balancer > create a load banacer (beacause we dont have one) > Load balancer name: tech264-ilhaan-sparta-app-lb > click 'create'.
   
**IMBOUND NAT RULE: An inbound NAT rule forwards incoming traffic sent to a selected IP address and port combination to a specific virtual machine.
Frontend port range start: if you have more than one VM, you will have to increment this. Starts at 50,000.
Backend port: will have to go through the SHH Port of the first VM. You will need this backend port number (example is 22) for something. WATCH CLASS BACK: 11/10/2024 - 15:30 ? Adonis.
 
^^^ CHECK THESE NOTES.
 
15. Health tab: Enable application health monitoring: tick. >
16. Recovery: Enable Automatic repairs: tick.
 
**Grace time period**:
The amount of time for which automatic repairs are suspended due to a state change on the VM. The grace time starts after the state change has completed. This helps avoid premature or accidental repairs.
 
17. Advanced tab: user data > paste in script
[Run app script](/tech264-cloud-linux/scripting/run-app-only.sh)
 
18. Tags > owner ilhaan
19. Review and create > create.
20. Let it deploy and set: then copy the IP into the browser.
21. IT WORKED!!🎊🎉🥳💃
 
> ☠️IF YOU DARE TO TEST IT☠️: Go to Instances and delete one. Then refresh it.
 
If you need to SSH into your first VM on the list:
* You'll need to clik on the first instance in the list.
* connect > SSH > put in key pair > ~/.ssh/tech264-ilhaan-az-key > copy public IP that's provided, e.g. 10.0.2.6 > you need to get into the public ip of the load balancer
* Search load balancer: click the right VM > get the settings > frontend IP config > copy IP address.
* Cange the IP address to the pblic ip address of the IP balancer.
* Go to a specific port (write this after you key): -p 50000
* Copy into Git Bash window.
* now you are in your first VM (name will appear after adminuser@tech254-r000000...).
 


 ## ***Connect to instance through SSH***
 1. Search for ***`scale set`***, select your ***`scale set`***
 2. Scroll down to ***`instances`*** on the left hand side and select the first instance showing.
 3. Go to ***`connect`*** in the top-left corner and select the ***`SSH`*** option.
 4. Add the path to your SSH private key into the box under option number 3: ***`Provide a path to your SSH private key file`***
 5. Copy and paste the private key path into a notepad
 6. Search for ***`Load Balancers`*** in the search box, navigate to your load balancer ***`tech264-ilhaan-sparta-app-lb`***
 7. Scroll down to ***`Settings`*** then ***`Frontend  IP Configuration`***
 8. Copy the load balancer's public IP address and use it to replace the private IP address in the ssh command name.
 9. Add the ***`-p`*** command to indicate it is a port and include the port number: ***`50000`***
 10. Your command should appear like this:
  ```bash
  ssh -i ~/.ssh/tech264-ilhaan-az-key -p 50000 adminuser@85.210.115.177
  ```z

## ***Testing the VM Scale Set***
Verify Deployment: Ensure the VMSS is deployed successfully.
Check Instances: Verify that the instances are created and running.
Load Balancer: Test the load balancer by accessing the application through its public IP.

## ***Diagram of VM Scale Set***

![alt text](/tech264-cloud-linux/cloud/azure/azure-images/Scale%20Sets.png)

## ***Managing Instances***

  - Scale Up/Down: Adjust the number of instances based on demand.
  - Monitor Health: Use Azure Monitor to keep track of instance health and performance.
  - Automatic Repairs: Enable automatic repairs to replace unhealthy instances.

## ***Deleting a VM Scale Set***
  - Navigate to VMSS: Go to the VM Scale Set in the Azure portal.
  - Delete VMSS: Select the VMSS and click on Delete.
  - Confirm Deletion: Confirm the deletion of the VMSS and all its associated resources:
    - Scale Set NIC (Network Interface Controller)

