# TCP
## 1 connection

```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  8.06 GBytes  6.92 Gbits/sec    0             sender
[  5]   0.00-10.00  sec  8.06 GBytes  6.92 Gbits/sec                  receiver
```
## 10 Connection
```
[ 23]   0.00-10.03  sec  1.85 GBytes  1.59 Gbits/sec                  receiver
[SUM]   0.00-10.03  sec  13.4 GBytes  11.5 Gbits/sec    0             sender
[SUM]   0.00-10.03  sec  13.4 GBytes  11.5 Gbits/sec                  receiver
```
## 50 Connection
```
[SUM]   0.00-10.02  sec  13.0 GBytes  11.1 Gbits/sec  3689             sender
[SUM]   0.00-10.02  sec  12.9 GBytes  11.0 Gbits/sec                  receiver
```
## 100 Connection
```
[SUM]   0.00-10.03  sec  13.6 GBytes  11.7 Gbits/sec  806             sender
[SUM]   0.00-10.05  sec  13.4 GBytes  11.5 Gbits/sec                  receiver
```

# UDP
## 1 connection
```
[ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total Datagrams
[  5]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/938 (0%)  sender
[  5]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.003 ms  0/938 (0%)  receiver
```
## 10 Connection
```
[ 23]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.009 ms  0/938 (0%)  receiver
[SUM]   0.00-10.00  sec  12.5 MBytes  10.5 Mbits/sec  0.000 ms  0/9380 (0%)  sender
[SUM]   0.00-10.00  sec  12.5 MBytes  10.5 Mbits/sec  0.010 ms  0/9380 (0%)  receiver
```
## 50 Connection
```
[103]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.016 ms  0/938 (0%)  receiver
[SUM]   0.00-10.00  sec  62.5 MBytes  52.4 Mbits/sec  0.000 ms  0/46862 (0%)  sender
[SUM]   0.00-10.00  sec  62.5 MBytes  52.4 Mbits/sec  0.025 ms  0/46862 (0%)  receiver
```
## 100 Connection
```
[SUM]   0.00-10.00  sec   125 MBytes   105 Mbits/sec  0.000 ms  0/93558 (0%)  sender
[SUM]   0.00-10.00  sec   125 MBytes   105 Mbits/sec  0.015 ms  0/93558 (0%)  receiver
```
