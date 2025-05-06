
# Prerequistes
* Install setup/init.sh
* Run the server/client on client and servers


# Setup
The client and server VMs were Standard_D4as_v5

vCPU - 4
Memory - 16 Gb
Max Bandwidth - 12.5Gbps

Server Script
```
iperf3 -s -p 4545 
```

Client
```
# UDP client
iperf3 -c <server-ip>  -p 4545 -u -P <parallel threads>

# TCP client
iperf3 -c <server-ip>  -p 4545 -u -P <parallel threads>

```
# Resuts

The tests include running iperf client/server on both sides and running different tests (TCP and UDP) while running these tests with different connections. (1, 10, 50, 100)

While TCP, 
- Without wireguard, we were able to acheive a bit-rate of ~12 Gbps
- With Wireguard - the bit-rate was 2 to 2.62 Gbps

With UDP traffic
- Without wireguard, With different levels of parallelism was able to lcock 1Mbps, 10Mbps, 50Mbps and 105 Mbps
- With Wireguard, runnign the same test yielded similar results