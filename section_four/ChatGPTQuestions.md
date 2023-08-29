# What is command `wc` in linux terminal ?

The `wc` command in Linux terminal is used to count the number of lines, words, and characters in a file or input.

The name `wc` stands for "word count".

**Here's an example of how you can use the wc command:**

`wc filename.txt`

This command will display the number of lines, words, and characters in the file filename.txt.

The output will look something like this:

10 50 300 filename.txt

In this example,
10 represents the number of lines,

50 represents the number of words,

and 300 represents the number of characters in the file.

You can also use the wc command with input from other commands using a pipe (|).

**For example:**

`ls -l | wc`

This command will count the number of lines, words, and characters in the output of the `ls -l` command.

# So how to differentiate between response from server or request from client ?

To differentiate between a response from the server and a request from the client in tcpdump data, you can look at the source and destination IP addresses and port numbers in the captured packets.

Typically, the client initiates a request to the server, and the server responds to that request. The source IP address and port number in the packet will indicate the client, while the destination IP address and port number will indicate the server.

For example, let's say you have a client with IP address `192.168.1.100` and a server with IP address `192.168.1.200`. When the client sends a request to the server, the source IP address in the packet will be `192.168.1.100`, and the destination IP address will be `192.168.1.200`.

Similarly, the source port number in the packet will indicate the client's port, and the destination port number will indicate the server's port. The client typically uses a random port number for its requests, while the server uses a well-known port number for its services.

By analyzing the tcpdump data, you can look for packets with the client's IP address as the source and the server's IP address as the destination to identify client requests. Conversely, packets with the server's IP address as the source and the client's IP address as the destination can be considered server responses.

Additionally, you can also look at the protocol information in the tcpdump output. For example, HTTP requests are typically sent over port `80`, while HTTPS requests are sent over port `443`. This can help you identify the type of traffic and further differentiate between requests and responses.
