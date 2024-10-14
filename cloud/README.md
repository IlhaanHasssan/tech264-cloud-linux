# ***What is the cloud?*** ☁️
- [***What is the cloud?*** ☁️](#what-is-the-cloud-️)
  - [The term "cloud" in cloud computing refers to a network of remote servers hosted on the internet, rather than on a local server or personal computer.](#the-term-cloud-in-cloud-computing-refers-to-a-network-of-remote-servers-hosted-on-the-internet-rather-than-on-a-local-server-or-personal-computer)
      - [How do we know if something is in the cloud?](#how-do-we-know-if-something-is-in-the-cloud)
      - [Differences between on-prem and the cloud?](#differences-between-on-prem-and-the-cloud)
          - [Location:](#location)
          - [Ownership:](#ownership)
          - [Costs:](#costs)
          - [Scalability:](#scalability)
          - [Maintenance:](#maintenance)
          - [Accessibility:](#accessibility)
      - [The 4 deployment models of cloud:](#the-4-deployment-models-of-cloud)
      - [Types of cloud services:](#types-of-cloud-services)
      - [What are the advantages/disadvantages of the cloud? (Particularly for a business)](#what-are-the-advantagesdisadvantages-of-the-cloud-particularly-for-a-business)
      - [Difference between OpEx vs CapEx and how it relates the cloud ?](#difference-between-opex-vs-capex-and-how-it-relates-the-cloud-)
      - [Is migrating to the cloud always cheaper?](#is-migrating-to-the-cloud-always-cheaper)
      - [Cloud Providers Market Share](#cloud-providers-market-share)
      - [What are the 3 largest Cloud providers known for (What makes them popular?)](#what-are-the-3-largest-cloud-providers-known-for-what-makes-them-popular)
      - [Which cloud provider do you think might be the best? Why?](#which-cloud-provider-do-you-think-might-be-the-best-why)
      - [What sorts of things do you usually need to pay for when using the cloud?](#what-sorts-of-things-do-you-usually-need-to-pay-for-when-using-the-cloud)
      - [What are the 4 pillars of DevOps? How do they link into the Cloud?](#what-are-the-4-pillars-of-devops-how-do-they-link-into-the-cloud)
      - [Find up to 3 case studies showing how businesses have migrated to the cloud or used the cloud to improve in some way?](#find-up-to-3-case-studies-showing-how-businesses-have-migrated-to-the-cloud-or-used-the-cloud-to-improve-in-some-way)
  - [***Autoscaling***](#autoscaling)
    - [***Steps for Code-along with 3 subnets***](#steps-for-code-along-with-3-subnets)
    - [***Architecture of a 3-subnet virtual network***](#architecture-of-a-3-subnet-virtual-network)

## The term "cloud" in cloud computing refers to a network of remote servers hosted on the internet, rather than on a local server or personal computer.
 
#### How do we know if something is in the cloud? 
- You can tell something is in the cloud if it is accessed over the internet, stored remotely on servers rather than on local devices, and is available on-demand from anywhere, typically through a web interface or app. It is centrally managed.

#### Differences between on-prem and the cloud? 
###### Location:
- On-Prem: Infrastructure is hosted locally on the organization’s premises.
- Cloud: Resources are hosted on remote servers accessed via the internet.
  
###### Ownership:
- On-Prem: The organization owns and maintains all hardware and software.
- Cloud: The cloud provider owns and manages the infrastructure.

###### Costs:
- On-Prem: Higher upfront capital expenditure for hardware and software; ongoing maintenance costs.
- Cloud: Pay-as-you-go pricing model; operational expenditure with lower upfront costs.

###### Scalability:
- On-Prem: Limited by physical hardware; scaling up requires additional purchases and setup.
- Cloud: Easily scalable; resources can be adjusted on-demand.

###### Maintenance:
- On-Prem: Requires in-house IT staff for maintenance and upgrades.
- Cloud: Maintenance and updates are handled by the cloud provider.

###### Accessibility:
- On-Prem: Access is typically limited to the local network.
- Cloud: Accessible from anywhere with an internet connection.



#### The 4 deployment models of cloud: 
- - ###### ***private*** 🔏
    - Infrastructure is dedicated to a single organization, providing enhanced security and control.
    - Resources are either hosted on-premises or by a third party, ensuring exclusive access and customizable solutions.

- - ###### ***public*** 📢
    - Services are offered over the public internet and shared among multiple organizations.
    - Users access resources hosted on the cloud provider's infrastructure (e.g., AWS, Azure), paying for what they use.
- - ###### ***hybrid*** 🔗
    - Combines public and private clouds, allowing data and applications to be shared between them.
    -  Organizations can keep sensitive data in a private cloud while using the public cloud for less critical workloads, enabling flexibility and scalability.
 - - ###### ***multi-cloud*** 🤹🏾‍♀️
      - Multicloud refers to the use of services from multiple cloud providers (public or private) within a single architecture.
      - Organizations adopt multicloud strategies to avoid vendor lock-in, optimize performance, and enhance redundancy by leveraging the strengths of different cloud providers.

#### Types of cloud services: 
   - ###### ***IaaS*** 🚧
     -   Provides virtualized computing resources over the internet, including servers, storage, and networking eg: AWS EC2.
   - ###### ***PaaS***🚉
       - Offers a platform allowing developers to build, deploy, and manage applications without dealing with the underlying infrastructure eg: Microsoft Azure App Service
  - ###### ***SaaS***👩🏾‍💻
      -  Delivers software applications over the internet on a subscription basis, accessible via a web browser eg: Microsoft 365, Google Workspace
- ##### What are the differences? 
    - ###### Control:
      - ***IaaS***: Users manage operating systems, applications, and middleware.
      - ***PaaS***: Users manage applications and data, while the provider handles the infrastructure.
      - ***SaaS***: Users interact with fully managed applications with no control over the underlying infrastructure.
  - ###### Use Case:
    - ***IaaS***: Best for organizations needing flexibility and control over computing resources.
    - ***PaaS***: Ideal for developers building applications without worrying about hardware or platform management.
    - ***SaaS***: Suited for end-users who need ready-to-use applications without installation or maintenance concerns.
#### What are the advantages/disadvantages of the cloud? (Particularly for a business)
  - ###### Advantages of Cloud Computing for Businesses
    -  **Cost Efficiency**: Reduces upfront capital expenses; pay-as-you-go models lower overall costs.
    - **Scalability**: Easily scale resources up or down based on demand.
     - **Accessibility**: Access data and applications from anywhere with an internet connection.
    - **Disaster Recovery**: Simplifies data backup and recovery processes.
    - **Automatic Updates**: Providers handle maintenance, updates, and security.

  - ###### Disadvantages of Cloud Computing for Businesses
    - **Security Concerns**: Storing sensitive data offsite can raise security and privacy issues.
    - **Downtime Risks**: Dependence on internet connectivity; outages can disrupt access to services.
    - **Vendor Lock-In**: Difficulty migrating data and applications between different cloud providers.
    - **Limited Control**: Less control over the infrastructure compared to on-premises solutions.
    - **Compliance Challenges**: Meeting regulatory requirements can be complex when using cloud services.

 
  #### Difference between OpEx vs CapEx and how it relates the cloud ?


- **CapEx (Capital Expenditure)**:
  - **Definition**: One-time expenses for acquiring or upgrading physical assets, such as hardware or infrastructure.
  - **Relation to Cloud**: Traditional on-premises infrastructure involves significant CapEx for servers and equipment.

- **OpEx (Operational Expenditure)**:
  - **Definition**: Ongoing expenses for day-to-day operations, such as subscription fees or utility costs.
  - **Relation to Cloud**: Cloud services typically operate on an OpEx model, where businesses pay for resources as needed, reducing upfront costs and allowing for flexible budgeting.

#### Is migrating to the cloud always cheaper? 

  - No, migrating to the cloud is not always cheaper. While it can reduce upfront capital expenditures (CapEx) and provide flexibility, costs can vary based on:

- **Usage Patterns**: High or unpredictable usage can lead to increased operational expenditures (OpEx).
- **Migration Costs**: Initial migration expenses and potential training costs may offset savings.
- **Long-Term Commitments**: Some cloud services may become more expensive over time compared to on-premises solutions.

#### Cloud Providers Market Share

  - As of 2023, the cloud computing market share is primarily dominated by a few key players. Here's a general breakdown:

  - **Amazon Web Services (AWS)**: ~32%
  - **Microsoft Azure**: ~22%
  - **Google Cloud Platform (GCP)**: ~10%
  - **IBM Cloud**: ~6%
  - **Alibaba Cloud**: ~6%
  - **Others (eg: Salesforce, Oracle, Tencent)**: ~24%

  - #### Market Share Trends Diagram

  - Below is a diagram to illustrate the market share distribution among major cloud providers:

```plaintext
          +-----------------------+
          |     Cloud Market      |
          +-----------------------+
          | AWS         | 32%    |
          | Azure       | 22%    |
          | GCP         | 10%    |
          | IBM Cloud   | 6%     |
          | Alibaba Cloud | 6%   |
          | Others      | 24%    |
          +-----------------------+

```
 
#### What are the 3 largest Cloud providers known for (What makes them popular?) 


1. **Amazon Web Services (AWS)**
   - **Popularity**: Known for its extensive range of services, global infrastructure, and scalability. AWS offers over 200 fully-featured services, making it a go-to choice for businesses of all sizes.

2. **Microsoft Azure**
   - **Popularity**: Popular for its integration with Microsoft products and services. Azure provides a robust platform for hybrid cloud solutions and is favored by enterprises for its enterprise-grade security and compliance features.

3. **Google Cloud Platform (GCP)**
   - **Popularity**: Known for its data analytics, machine learning capabilities, and strong performance in high-computational tasks. GCP's focus on artificial intelligence and data-driven solutions appeals to tech-savvy businesses and developers.



#### Which cloud provider do you think might be the best? Why? 


Choosing the "best" cloud provider depends on specific business needs, but many consider **Amazon Web Services (AWS)** as a leading choice for several reasons:

- **Comprehensive Service Offering**: AWS provides the widest range of services and features, catering to diverse use cases, from simple storage to complex machine learning applications.
- **Global Reach**: With a vast network of data centers worldwide, AWS ensures low latency and high availability for users across the globe.
- **Mature Ecosystem**: AWS has a well-established ecosystem with extensive documentation, community support, and a marketplace of third-party applications.

However, organizations should evaluate their unique requirements, budget, and existing technology stack when selecting a cloud provider, as **Microsoft Azure** and **Google Cloud Platform** also offer strong capabilities and may be better suited for specific use cases.

#### What sorts of things do you usually need to pay for when using the cloud? 


1. **Compute Resources**: Charges for virtual machines, server instances, or containers based on usage (e.g., CPU hours).

2. **Storage**: Costs for data storage solutions, including block storage, object storage, and backups.

3. **Data Transfer**: Fees for data transfer in and out of the cloud, especially when moving large amounts of data.

4. **Network Services**: Charges for services like load balancers, VPNs, and dedicated connections.

5. **Additional Services**: Costs for managed services, databases, machine learning tools, and security features.

6. **Support Plans**: Fees for premium support or technical assistance from the cloud provider.
7.  **Data Egress**: You will be required to pay for any data going out of your network.

#### What are the 4 pillars of DevOps? How do they link into the Cloud? 


1. **Collaboration**:
   - **Description**: Enhances teamwork between development and operations teams.
   - **Cloud Link**: Cloud platforms facilitate collaboration through shared resources and tools.

2. **Automation**:
   - **Description**: Automates repetitive tasks in the software development lifecycle.
   - **Cloud Link**: Cloud services enable automation of deployment, testing, and scaling processes.

3. **Continuous Integration/Continuous Deployment (CI/CD)**:
   - **Description**: Encourages frequent code changes and automatic deployment.
   - **Cloud Link**: Cloud environments provide the infrastructure for seamless CI/CD pipelines.

4. **Monitoring and Feedback**:
   - **Description**: Involves continuous monitoring of applications and systems for performance and issues.
   - **Cloud Link**: Cloud tools offer real-time monitoring and analytics to improve application performance.

#### Find up to 3 case studies showing how businesses have migrated to the cloud or used the cloud to improve in some way?


1. **Netflix**
   - **Migration**: Transitioned from on-premises data centers to AWS.
   - **Improvement**: Gained scalability to handle millions of concurrent users and enhanced content delivery through global distribution, leading to improved streaming performance.

2. **Spotify**
   - **Migration**: Moved its infrastructure to Google Cloud Platform.
   - **Improvement**: Leveraged GCP’s data analytics and machine learning tools to enhance user recommendations and insights, resulting in a more personalized user experience.

3. **General Electric (GE)**
   - **Migration**: Adopted a cloud-based IoT platform, Predix, on Microsoft Azure.
   - **Improvement**: Improved operational efficiency and predictive maintenance capabilities for industrial equipment, leading to reduced downtime and increased productivity.

## ***Autoscaling***
![alt text](/tech264-cloud-linux/cloud/cloud-images/Autoscaling.png)
![alt text](/tech264-cloud-linux/cloud/cloud-images/Scaling%20types.png)


### ***Steps for Code-along with 3 subnets***
1. set up a new vnet - 3 subnet version
   1.  create 3 subnets and name then appropriately
   2.  give the addresses 10.0.2.0 for the public, 3 for the dmz and 4 for the private subnet
   3. for the private subnet enable the no outbound access - this mean whatever is in the subnet cannot access the internet

   4. tag yourself as owner
   5. create
2. Create db vm from image
   1. go to your ready-to-run-db image
   2. create a vm
   3. name appropriately
   4. for availability- self select and db in zone 3
   5. allow ssh (for now)
   6. disk as normal
   7. networking - choose the right vnet and subnet, no public ip

3. Create the app vm from image
   1. go to your ready-to-run-app image
   2. create a vm
   3. name
   4. for availability- self select and db in zone 1
   5. allow http and ssh
   6. disk as normal
   7. networking - choose the right vnet (3 subnet vnet) and subnet (public)
4. Create NVA vm
   1. create with ramons's clean image image
   2. name
   3. for availability- self select and db in zone 2
   4. allow just ssh
   5. disk as usual
   6. networking - choose the right vnet (3 subnet vnet) and subnet (dmz)
   7. give public ip (for now) to allow us to ssh in
   8. no user data - can upgrade and update when we ssh in
   9. create
5. Set a ping (sends a packet regularly) to check the comms between the app and the db vms
   1. ssh into the app vm
   2. we want to ping the db vm ```ping 10.0.4.4``` ![ping command](/tech264-cloud-linux/cloud/cloud-images/ping%20command.png)
   3. each message is the db replying and it also tells you how long the response takes (ctrl c/z to exit)
   4. set up routing (using a routing table)
   5. search route table on azure portal
   6. Click create and select the correct resource group, location and give it an appropriate name
   7. Ensure it is set to yes under `propogate gateway routes`
   8. Add your tags, and click review and create!
   9. Once it is created, navigate to the routes column on the right hand side, click the add+ button
   10. Insert the correct IP address, hop type and hop type address, it should look like this:
   ![](/tech264-cloud-linux/cloud/cloud-images/add-route-subnet.png)
   11. Next, navigate below the `routes` section to the `subnets` section and click the `assoicate` button 
   12. ![](/tech264-cloud-linux/cloud/cloud-images/associate-button.png)
   13. Select the correct VNet and `public subnet`
   

### ***Architecture of a 3-subnet virtual network***
![](/tech264-cloud-linux/cloud/cloud-images/tech264%20-%203%20subnets%20architecture.png)
