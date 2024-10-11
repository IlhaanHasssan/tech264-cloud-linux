# ***Monitoring***
- [***Monitoring***](#monitoring)
  - [***How to create a dashboard***](#how-to-create-a-dashboard)
  - [***How to increase CPU***](#how-to-increase-cpu)
  - [***Load testing with Apache Bench to create an unhealthy instance***](#load-testing-with-apache-bench-to-create-an-unhealthy-instance)
  
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

