## Ping is using ICMP Protocol

## HTTP is using TCP Protocol or UDP

## Protocol Stack

<div> <img src="/section_four/images/protocol_stack.PNG" width="600" /></div>

## The six basic TCP flags

The original TCP packet format has six flags. Two more optional flags have since been standardized, but they are much less important to the basic functioning of TCP. For each packet, tcpdump will show you which flags are set on that packet.

**SYN (synchronize)** [S] — This packet is opening a new TCP session and contains a new initial sequence number.

**FIN (finish)** [F] — This packet is used to close a TCP session normally. The sender is saying that they are finished sending, but they can still receive data from the other endpoint.

**PSH (push)** [P] — This packet is the end of a chunk of application data, such as an HTTP request.

**RST (reset)** [R] — This packet is a TCP error message; the sender has a problem and wants to reset (abandon) the session.

**ACK (acknowledge)** [.] — This packet acknowledges that its sender has received data from the other endpoint. Almost every packet except the first SYN will have the ACK flag set.

**URG (urgent)** [U] — This packet contains data that needs to be delivered to the application out-of-order. Not used in HTTP or most other current applications.

## Three-way handshake

The first packet sent to initiate a TCP session always has the SYN flag set. This initial SYN packet is what a client sends to a server to start opening a TCP connection. This is the first packet you see in the sample `tcpdump` data, with `Flags [S]`. This packet also contains a new, randomized sequence number (seq in `tcpdump` output).

If the server accepts the connection, it sends a packet back that has the SYN and ACK flags, and acknowledges the initial SYN. This is the second packet in the sample data, with Flags [S.]. This contains a different initial sequence number.

(If the server doesn't want to accept the connection, it may not send anything at all. Or it may send a packet with the RST flag.)

Finally, the client acknowledges receiving the SYN|ACK packet by sending an ACK packet of its own.

This exchange of three packets is usually called the TCP three-way handshake. In addition to sequence numbers, the two endpoints also exchange other information used to set up the connection.

## ICMP and UDP don't have TCP flags

If you look at `tcpdump` data for pings or basic DNS lookups, you will not see flags. This is because ping uses ICMP, and basic DNS lookups use UDP.
These protocols do not have TCP flags or sequence numbers.
