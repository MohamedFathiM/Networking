# vagrant default password = vagrant
vagrant up
vagrant ssh

ping -c3  8.8.8.8

# Listen on specific port
nc -l 8080

# connect to port
nc localhost 8080

printf "GET / HTTP/1.1\r\nHost: www.example.com\r\n\r\n" | nc www.example.com 80

ip addr show eth0

ip route show

# get ipv6 address (a ip4 , CName canonical name )
host -t aaaa google.com
