# 1-distributed_web_infrastructure

![1-distributed_web_infrastructure(1)](https://github.com/mbianou-bradon/alx-system_engineering-devops/assets/72765949/218c7859-7703-4a71-a1d5-24a00993ab75)


[View Board](https://docs.google.com/drawings/d/1wYd5Zj9Fs2wNkXtJ33IlXEsEdYCa4jAQAVplF-xdhgk/edit)

## Information: 

Distributed web infrastructure that atttempts to reduce the traffic to the primary server by distributing some of the load to a replica server with the aid of a server responsible for balancing the load(Load Balancer) between the two servers (primary and replica server).


## Details:

- The load balancer is configured with the round-robin distribution algorithm. This algorithm sends requests to each server behind the load balancer in turn, according to their weights. This is a simple and fair way to distribute traffic, as it ensures that all servers are used evenly.

- The load balancer is enabled in an active-passive setup. This means that only one server is active at a time, while the other server is on standby. This is done to improve performance and reliability. If the active server fails, the passive server can take over immediately.

- A primary-replica (master-slave) database cluster has two servers, one primary and one replica. The primary server is responsible for all read and write operations, while the replica server is only responsible for read operations. This helps to improve performance and availability, as the replica server can take over if the primary server fails.

- The primary node is responsible for all the write operations that the site needs. The replica node is capable of processing read operations, which decreases the read traffic to the primary node. This helps to improve performance and scalability.

## Faults of the Infrastructure

1. There are multiple SPOF (Single Point Of Failure).
   For example, if the Primary MySQL database server is down, the entire site would be unable to make changes to the site (including adding or removing users). The server containing the load balancer and the application server connecting to the primary database server are also SPOFs.
   
2. Security issues.
The data transmitted over the network isn't encrypted using an SSL certificate so hackers can spy on the network. There is no way of blocking unauthorized IPs since there's no firewall installed on any server.

3. No monitoring.
   We have no way of knowing the status of each server since they're not being monitored.
