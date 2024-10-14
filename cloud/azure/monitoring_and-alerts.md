# ***Monitoring***
- [***Monitoring***](#monitoring)
  - [***How to create a dashboard***](#how-to-create-a-dashboard)
  - [***How to increase CPU***](#how-to-increase-cpu)
  - [***Load testing with Apache Bench to create an unhealthy instance***](#load-testing-with-apache-bench-to-create-an-unhealthy-instance)
  - [***Creating an alert rule***](#creating-an-alert-rule)
    - [***Condition***](#condition)
    - [***Actions***](#actions)
    - [***Details***](#details)
    - [***Notifications***](#notifications)
    - [***Tags***](#tags)
    - [***Review and Create***](#review-and-create)
    - [***Alert Email***](#alert-email)
  - [***Remove dashboards and alert and action group***](#remove-dashboards-and-alert-and-action-group)
    - [***Removing a Dashboard***](#removing-a-dashboard)
    - [***Removing an Alert Rule***](#removing-an-alert-rule)
    - [***Removing an Action Group***](#removing-an-action-group)
  
## ***How to create a dashboard***
 
1. In the ***`VM`*** -> ***`Overview`***-> scroll down to where you can see:
  
  Properties--Monitoring--Capabilities--Recommendations--Tutorial--s
1. Select ***`Monitoring`***
2. In the monitoring window, scroll down to ***`performance and utilization`*** -> ***`Platform metrics`***
3. Pin the metrics that we need(e.g. CPU, Disk bytes, Network)
4. Click ***`Pin`***-> ***`create new`***-> select type(private/shared) -> ***`Dashboard name`***, ***`resource group`***->  then pin to the dashboard you have created in ***`Pin to dashboard - Existing`***
5. Search ***`Dashboard Hub`*** to view your dashboard, under ***`shared dashboards`***, and click into your dashboard under ***`go to dashboard`***
 
## ***How to increase CPU***
```bash
sudo apt-get install apache2-utils
 # installs the Apache HTTP Server Utilities package on a Debian-based Linux system (such as Ubuntu). This package contains useful tools that complement the Apache web server but can also be used independently.

```


   - you can also increase CPU by refreshing your page many times, though it will only increase slightly.
  
## ***Load testing with Apache Bench to create an unhealthy instance***
 
```bash
ab -n 10000 -c 200 http://<PublicIP>/  # put your Public IP address/web page URL here.
# ab: This is the Apache Benchmark tool, which is used to test how many requests a web server can handle per second.

# -n 10000: This specifies the total number of requests to perform. In this case, the tool will send 10,000 HTTP requests to the target server (http://20.162.196.61/).

# -c 200: This specifies the number of concurrent requests to be made at the same time. In this case, 200 requests will be made simultaneously until all 10,000 requests are completed.

# http://20.162.196.61/: This is the URL of the server being tested. In this case, it will make requests to the IP 20.162.196.61 on port 80 (the default HTTP port).
```
## ***Creating an alert rule***


1. Select the VM you wish to add an alert to and navigate to **Monitoring**.
2. under "Alerts", you will see a pop up to **enable** or **creatre alert rule**. Select **creatre alert rule**.
 
### ***Condition***
1. For **Signal name**, select **Percentage CPU**.
2. Change the **Threshold** to your desired amount: **5**% in our case.
 
### ***Actions***
1. Select **Create action group**.
2. Select **tech264** as the resource group.
3. Name the action group appropriately.
 
### ***Details***
1. Set the severity.
2. Add a rule name.
 
### ***Notifications***
1. For **notification type**, select **Email/SMS/message/Push/Voice**.
2. Name it appropriately.
3. Select the pencil to edit details.
4. Enable **email**, and input your desired email.
 
### ***Tags***
1. Select owner and your name.
 
### ***Review and Create***
1. **Ensure** you've selected the correct options.
2. **Create** your shiny new alert rule.

### ***Alert Email***
![](/tech264-cloud-linux/cloud/cloud-images/Alert-email.png)

   - once you have gone over the threshold, you should receive an email alerting you to this.
## ***Remove dashboards and alert and action group***

### ***Removing a Dashboard***
1. Navigate to Dashboards:
   * In the Azure portal, click on “Dashboard” from the left-hand menu.
2. Select the Dashboard:
   * Find the dashboard you want to delete. Click on the three dots (ellipsis) next to the dashboard name.
3. Delete the Dashboard:
   * Select “Delete” from the dropdown menu.
   * Confirm the deletion when prompted.#
 
### ***Removing an Alert Rule***
1. Navigate to Azure Monitor:
   * In the Azure portal, go to “Monitoring” from the left-hand menu.
2. Select Alerts:
   * Under the “Alerts” section, click on “Alert rules”.
3. Find the Alert Rule:
   * Locate the alert rule you want to delete. You can use the search bar to find it quickly.
4. Delete the Alert Rule:
   * Click on the three dots (ellipsis) next to the alert rule.
   * Select “Delete” and confirm the deletion.
 
### ***Removing an Action Group***
1. Navigate to Azure Monitor:
   * In the Azure portal, go to “Monitoring”.
2. Select Action Groups:
   * Under the “Alerts” section, click on “Action groups”.
3. Find the Action Group:
   * Locate the action group you want to delete.
4. Delete the Action Group:
   * Click on the three dots (ellipsis) next to the action group.
   * Select “Delete” and confirm the deletion.
 
