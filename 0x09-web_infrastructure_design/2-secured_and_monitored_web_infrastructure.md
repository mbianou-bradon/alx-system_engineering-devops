# 2-secured_and_monitored_web_infrastructure

![2-secured_and_monitored_web_infrastructure](https://github.com/mbianou-bradon/alx-system_engineering-devops/assets/72765949/821a6a3c-f6ef-4f0d-9578-3a770978938c)


[View Board](https://docs.google.com/drawings/d/1jlx12VYUqHCsbFAGWPMDoTAIweCOBeD6B0Srd7JNBtA/edit)


## Information
a 3-server web infrastructure that is secured, monitored, and serves encrypted traffic.
An extension of the previous implementation in task 1, but with firebase and SSL certificates added to it.

## Details: 


- Firewalls protect networks from unwanted and unauthorized users by filtering traffic between the internal network and the external network. They can be configured to block specific types of traffic, such as incoming traffic from certain IP addresses or ports.

- SSL certificates encrypt traffic between web servers and browsers. This helps to protect sensitive information, such as credit card numbers and passwords, from being intercepted by third parties.

- Monitoring clients monitor the performance and health of servers and networks. They can alert administrators to problems, such as performance degradation or security vulnerabilities.


## Faults of the Infrastructure


1. Terminating SSL at the load balancer level would leave the traffic between the load balancer and the web servers unencrypted.

2. Having one MySQL server is an issue because it is not scalable and can act as a single point of failure for the web infrastructure.

3. Having servers with all the same components would make the components contend for resources on the server like CPU, Memory, I/O, etc., which can lead to poor performance and also make it difficult to locate the source of the problem. A setup such as this is not easily scalable.
