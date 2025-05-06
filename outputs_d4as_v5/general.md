```
root@vmss-d4as000001:/home/venkat# ip link show
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP mode DEFAULT group default qlen 1000
    link/ether 7c:ed:8d:19:22:25 brd ff:ff:ff:ff:ff:ff
3: enP30285s1: <BROADCAST,MULTICAST,SLAVE,UP,LOWER_UP> mtu 1500 qdisc mq master eth0 state UP mode DEFAULT group default qlen 1000
    link/ether 7c:ed:8d:19:22:25 brd ff:ff:ff:ff:ff:ff
    altname enP30285p0s2
4: if_out@if5: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP mode DEFAULT group default qlen 1000
    link/ether 9e:d6:1f:f7:2a:8d brd ff:ff:ff:ff:ff:ff link-netns server-ns
6: wg0: <POINTOPOINT,NOARP,UP,LOWER_UP> mtu 1420 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/none
```

```
    root@vmss-d4as000001:/home/venkat# ifconfig
enP30285s1: flags=6211<UP,BROADCAST,RUNNING,SLAVE,MULTICAST>  mtu 1500
        inet6 fe80::7eed:8dff:fe19:2225  prefixlen 64  scopeid 0x20<link>
        ether 7c:ed:8d:19:22:25  txqueuelen 1000  (Ethernet)
        RX packets 64507941  bytes 94721413037 (94.7 GB)
        RX errors 0  dropped 120341  overruns 0  frame 0
        TX packets 3085918  bytes 263763495 (263.7 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.16.0.5  netmask 255.255.255.0  broadcast 172.16.0.255
        inet6 fe80::7eed:8dff:fe19:2225  prefixlen 64  scopeid 0x20<link>
        ether 7c:ed:8d:19:22:25  txqueuelen 1000  (Ethernet)
        RX packets 14135756  bytes 91236014927 (91.2 GB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 3083667  bytes 263605247 (263.6 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

if_out: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 12.0.0.1  netmask 255.255.255.0  broadcast 0.0.0.0
        inet6 fe80::d039:8aff:fe37:de3a  prefixlen 64  scopeid 0x20<link>
        ether 9e:d6:1f:f7:2a:8d  txqueuelen 1000  (Ethernet)
        RX packets 33  bytes 2459 (2.4 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 29  bytes 20604 (20.6 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 248  bytes 32509 (32.5 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 248  bytes 32509 (32.5 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

wg0: flags=209<UP,POINTOPOINT,RUNNING,NOARP>  mtu 1420
        inet 10.0.0.2  netmask 255.255.255.0  destination 10.0.0.2
        unspec 00-00-00-00-00-00-00-00-00-00-00-00-00-00-00-00  txqueuelen 1000  (UNSPEC)
        RX packets 11056448  bytes 16050772412 (16.0 GB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 700933  bytes 67355504 (67.3 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

```