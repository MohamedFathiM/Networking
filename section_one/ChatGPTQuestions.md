# Vagrant :

Vagrant is a source-available software product for building and maintaining portable virtual software development environments; e.g., for VirtualBox, KVM, Hyper-V, Docker containers, VMware, Parallels .

# Ping vs Http :

HTTP and Ping are two different protocols used in computer networks. Let's take a closer look at each of them:

HTTP (Hypertext Transfer Protocol):
HTTP is the protocol used for communication between web browsers (clients) and web servers. It is the foundation of the World Wide Web and is responsible for retrieving and displaying web pages, images, videos, and other resources.
When you type a URL (Uniform Resource Locator) into your web browser's address bar and hit enter, the browser sends an HTTP request to the web server hosting that URL. The server then processes the request and sends back an HTTP response containing the requested web page or resource. This communication happens over the internet.
HTTP is a request-response protocol, meaning that the client sends a request, and the server responds with the requested data. It uses TCP (Transmission Control Protocol) as its underlying transport protocol, ensuring reliable delivery of data.

Ping:
Ping is a utility used to test the reachability and round-trip time (RTT) of a network host or IP address. It operates at the Internet Control Message Protocol (ICMP) level, which is a network layer protocol.
When you ping a host, your computer sends an ICMP Echo Request message to that host. If the host is reachable and configured to respond to ICMP requests, it sends back an ICMP Echo Reply message. The round-trip time (RTT) is measured, indicating the time it takes for the request to reach the host and for the reply to return.

Ping is commonly used to troubleshoot network connectivity issues, check if a host is online, and measure network latency. It is a simple and lightweight tool that is available on most operating systems.

In summary, HTTP is a protocol used for web communication, allowing clients to request and receive web pages and resources from servers. On the other hand, Ping is a utility used to test network connectivity and

# IETF model (IP / TCP Model)

<div> <img src="/section_one/images/OSI-Model-vs-TCPIP-Model.png" width=200/></div>

# lsof -i

The `lsof -i` command is used to list open network connections and the associated processes on a system. It stands for "list open files - internet."
