# # Create a network namespace
# ip netns add server-ns

# # Create a veth pair
# ip link add dev if_in type veth peer name if_out 

# # Add the interface to the namespace
# ip link set if_in netns server-ns

# # bring up interface
# ip netns exec server-ns ip link set if_in up
# ip link set if_out up

# # Add address to the interface
# ip netns exec server-ns ip addr add 12.0.0.3/24 dev if_in
# ip addr add 12.0.0.1/24 dev if_out
# ip netns exec server-ns ip route add default via 12.0.0.1 dev if_in

# echo 1 > /proc/sys/net/ipv4/ip_forward
# iptables -t nat -A POSTROUTING -s 12.0.0.0/24 ! -o if_out -j MASQUERADE

mkdir wg-conf
cd wg-conf
umask 077
wg genkey | tee privatekey | wg pubkey > publickey


sudo ip link add dev wg0 type wireguard
sudo ip addr add dev wg0  10.0.0.1/24 dev wg0
sudo wg set wg0 private-key ./privatekey
sudo ip link set wg0 up

sudo ip link add vxlan-demo type vxlan id 100 remote <ip1> local  <ip2> dev eth0 dstport 4789
sudo ip addr add 11.0.0.2/24 dev vxlan-demo
sudo ip link set vxlan-demo up