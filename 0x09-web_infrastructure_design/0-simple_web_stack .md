1. What is a server?
    - A server is a powerful computer system that stores and delivers web content to users over the internet.
    - It handles incoming requests, processes them, and sends back the requested information to the user's computer.
    - The server communicates with the user's computer using transmission control protocol (TCP) and hypertext transfer protocol (HTTP) over the internet.

2. What is the role of the domain name?
    - The domain name acts as a unique identifier for our website on the internet.
    - Users enter the domain name (www.foobar.com) in their browser to access the website.
    - The domain name is used to associate the website with its IP address.

3. DNS Record -
    - The DNS record www is a subdomain of the domain name(foobar.com).
    - It associates the subdomain "www" with the IP address of the server hosting the website.
    - The www record is a type of domain name record that maps the hostname www to an IP address.

4. What is the role of a Web Server?
    - The web server (Nginx) handles incoming requests from the user's computer and serves static content, such as HTML, CSS, and images.
    - The web server communicates with the application server to process requests and generate responses.

5. What is the role of a Application Server?
    - Interprets and executes dynamic requests from the web server and generates responses based on the website's business logic.
    - It handles user authentication, access control, and session management.
    - it communicates with the web server to generate dynamic content for the user.

6. What is the role of a Database?
    - stores and manages website data, such as user accounts, product information, and other dynamic content.
    - It is used to store data that is frequently accessed and modified by the website's application server. The application server communicates with the database to retrieve and store data.

7. What is the server using to communicate with the computer of the user requesting the website?
    - The server uses the TCP/IP protocol suite to communicate with the user's computer over the internet.
    - TCP is used to establish a connection between the server and the user's computer, while HTTP is used to transfer data between the two endpoints. The communication is encrypted using SSL/TLS for security purposes.

Issues:
- SPOF (Single Point of Failure):
        this current infrastructure will stop working if the server breaks down, which will lead to downtime and lost revenue/profit.
- Downtime:
        Server, web server, or application server maintenance may cause downtime (temporary unavailability of website services), often due to the need for a server restart after software updates or patches.
- Limited Scalability:
        The current infrastructure may not support sudden traffic spikes or high traffic volume. It is not enough to host the website if there are too many incoming requests.