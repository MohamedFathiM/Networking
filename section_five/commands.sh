# install traceroute
# using to see all of the hops involved in getting your traffic

sudo apt update
sudo apt install inetutils-traceroute

# all hops between you and google.com
traceroute google.com

# more details
mtr google.com
