# # Create a network namespace
# ip netns add client-ns

# # Create a veth pair
# ip link add dev if_in type veth peer name if_out 

# # Add the interface to the namespace
# ip link set if_in netns client-ns

# # bring up interface
# ip netns exec client-ns ip link set if_in up
# ip link set if_out up

# # Add address to the interface
# ip netns exec client-ns ip addr add 12.0.0.2/24 dev if_in
# ip addr add 12.0.0.1/24 dev if_out
# ip netns exec client-ns ip route add default via 12.0.0.1 dev if_in

# echo 1 > /proc/sys/net/ipv4/ip_forward
# iptables -t nat -A POSTROUTING -s 12.0.0.0/24 ! -o if_out -j MASQUERADE

mkdir wg-conf
cd wg-conf
umask 077
wg genkey | tee privatekey | wg pubkey > publickey

sudo ip link add wg0 type wireguard
sudo ip addr add dev wg0 10.0.0.2/24 dev wg0
sudo wg set wg0 private-key ./privatekey
sudo ip link set wg0 up