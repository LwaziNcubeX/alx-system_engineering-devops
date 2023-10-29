- We added 2 servers to distribute the workload and ensure high availability in case one server fails.
- We added a web server (Nginx) to handle incoming requests and serve static content quickly.
- We added an application server to handle dynamic requests and communicate with the web server to process dynamic requests based on website logic.
- We added a load balancer (HAproxy) to balance incoming requests across the two web servers and prevent one server from overloading.
- We added application files to contain the website codebase.
- We added a database (MySQL) to store and manage website data, allowing users to interact with the website.

Here are some specifics about the infrastructure:

- We used a round-robin distribution algorithm for the load balancer to ensure that all web servers receive a fair share of incoming traffic.
- We deployed an Active-Active setup for the load balancer, where both web servers are continually serving users.
- We configured our database using a Primary-Replica (Master-Slave) cluster to ensure high availability and data redundancy.
- The primary node in the database serves read and write requests, while the replica node duplicates data from the primary node. If the primary node fails, the replica node becomes the new primary node to ensure high availability.

There are some issues with our infrastructure that we need to address:

- We have a SPOF problem with our load balancer since there are no backup mechanisms in place.
- There are security issues, such as a lack of HTTPS and firewalls, which need to be set up to protect the website and its data.
- We currently lack a monitoring system, which makes it difficult to track system performance, reliability, and security.