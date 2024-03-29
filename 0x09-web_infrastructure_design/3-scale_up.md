- We added one server to host the website and its data.
- We added one load-balancer (HAproxy) configured as a cluster with another one to balance incoming requests across multiple servers and ensure high availability.
- We split the components (web server, application server, and database) onto their own servers for better scalability, flexibility, and security.

Here's why we added each additional element:

- We added one server to host the website and its data because it's the basic unit of web infrastructure. It's where the website's files and data are stored, and it's where the website logic is executed.
- We added one load-balancer (HAproxy) configured as a cluster with another one to balance the incoming requests across multiple servers. With this, we can ensure that the workload is distributed evenly. Additionally, if one server fails, the other servers can handle the incoming requests and provide high availability.
- We split the components (web server, application server, and database) onto their own servers because it allows us to scale each component independently based on the website's requirements. This architecture provides greater flexibility, better performance, and improved security.

With this infrastructure, we can easily add more servers to handle the increasing workload without having to add all the components (web server, application server, and database) to each new server. We only need to add the component(s) that lack the necessary resources.