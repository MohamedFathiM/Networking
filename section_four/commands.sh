# get the manual of tcpdump
man tcpdump

# details about network traffic between two hosts
sudo tcpdump -n host 8.8.8.8
ping 8.8.8.8


# details about any traffic
# get all traffic from DNS which run on port 53
sudo tcpdump -n port 53
ping yahoo.com


# watching http in tcpdump
sudo tcpdump -n port 80
printf 'HEAD / HTTP/1.1\r\nHpst: example.net\r\n\r\n' | nc example.net 80


# count number of lines , words and chars
printf 'HEAD / HTTP/1.1\r\nHpst: example.net\r\n\r\n' | wc
