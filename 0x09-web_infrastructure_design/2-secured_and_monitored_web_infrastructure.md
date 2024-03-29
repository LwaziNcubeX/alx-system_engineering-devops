- We added three firewalls to protect the website and its data from potential threats.
- We added an SSL certificate to serve www.foobar.com over HTTPS and ensure that all data exchanged between the website and users is encrypted.
- We added three monitoring clients (data collectors for Sumologic or other monitoring services) to track system performance, reliability, and security.

Here's why we added each element:

- Firewalls are used to prevent unauthorized access to the website and its data. They monitor incoming and outgoing traffic and can block malicious traffic.
- HTTPS is used for secure communication between the website and its users, protecting sensitive data and ensuring privacy.
- Monitoring is essential for tracking system performance, reliability, and security. It helps in identifying issues and resolving them before they become major problems.

We're using a sumologic as a monitoring tool, which collects data from the system logs, network metrics, and other sources. It provides real-time monitoring and alerts when there are issues with the website.

If we want to monitor our web server QPS, we need to track the number of requests processed per second by the web server. We can use the monitoring tool to collect this data and analyze it.

Here are some issues with our infrastructure that we need to address:

- Terminating SSL at the load balancer level is an issue because it increases the load on the load balancer and compromises the security of the website. It's better to terminate SSL on the web server itself.
- Having only one MySQL server capable of accepting writes is an issue because it's a single point of failure. If the server fails, the website's data will be lost.
- Having servers with all the same components (database, web server, and application server) might be a problem because it won't scale well. If we add more servers, we'll still have the same components, which could create bottlenecks in the system. It's better to have a distributed architecture where different server types are used for different tasks.