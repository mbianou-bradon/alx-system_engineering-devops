# 0-Simple_Web_Stack

![0-simple_web_stack(1)](https://github.com/mbianou-bradon/alx-system_engineering-devops/assets/72765949/83b83824-7750-49d5-939c-f231ee5535d6)

[view board](https://docs.google.com/drawings/d/1c36jUGSloJQVMbiY48IX4lpfafcNzF8NMAs6mZSUkx0/edit)


## About:

Simple web infrastructure that hosts a website that is reachable via www.foobar.com. There are little or no security. No firewalls or SSL certificates for protecting the server's network. Each component (database, application server) has to share the resources (CPU, RAM, and SSD) provided by the server.


## Details

- A server is a computer that provides resources to other computers, called clients.

- A domain name is a human-readable name that is used to identify a website. It is mapped to an IP address, which is a unique number that identifies a computer on the internet.

- The type of DNS record that www.foobar.com uses is an A record. This record maps the domain name www.foobar.com to its IP address.

- A web server is a software program that delivers web pages to users. When a user requests a web page, the web server retrieves the page from the website's storage and sends it to the user's browser.

- An application server is a computer program that runs applications. It provides the resources and services that applications need to run, such as memory, processing power, and storage.

- A database is a collection of data that is organized in a way that makes it easy to access and manage. Databases are used to store all sorts of information, such as customer records, product inventory, and financial data.

- The server and client communicate with each other using the TCP/IP protocol suite. TCP/IP is a set of rules that govern how data is sent and received over the internet.


## Faults of the Infrastructure

- There are multiple SPOF (Single Point Of Failure) in this infrastructure.
    For example, if the MySQL database server is down, the entire site would be down.

- Downtime when maintenance needed.
    When we need to run some maintenance checks on any component, they have to be put down or the server has to be turned off. Since there's only one server, the website would be experiencing a downtime.

- Cannot scale if there's too much incoming traffic.
    It would be hard to scale this infrastructure becauses one server contains the required components. The server can quickly run out of resources or slow down when it starts receiving a lot of requests.
