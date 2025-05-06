TLDR

# TCP
## 1 
```
[  5]   0.00-10.00  sec  13.9 GBytes  11.9 Gbits/sec    0             sender
[  5]   0.00-10.00  sec  13.9 GBytes  11.9 Gbits/sec                  receiver
```
## 10
```
[SUM]   0.00-10.00  sec  13.9 GBytes  11.9 Gbits/sec   10             sender
[SUM]   0.00-10.00  sec  13.9 GBytes  11.9 Gbits/sec                  receiver
```
## 50
```
[SUM]   0.00-10.01  sec  13.9 GBytes  11.9 Gbits/sec  714             sender
[SUM]   0.00-10.01  sec  13.9 GBytes  11.9 Gbits/sec                  receiver
```
## 100
```
[SUM]   0.00-10.01  sec  14.0 GBytes  12.0 Gbits/sec  14273             sender
[SUM]   0.00-10.02  sec  13.9 GBytes  11.9 Gbits/sec                  receiver
```

# UDP
## 1
```
[  5]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/938 (0%)  sender
[  5]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.004 ms  0/938 (0%)  receiver
```

## 10
```
[SUM]   0.00-10.00  sec  12.5 MBytes  10.5 Mbits/sec  0.000 ms  0/9380 (0%)  sender
[SUM]   0.00-10.00  sec  12.5 MBytes  10.5 Mbits/sec  0.011 ms  0/9380 (0%)  receiver
```

## 50
```
[SUM]   0.00-10.00  sec  62.5 MBytes  52.4 Mbits/sec  0.000 ms  0/46862 (0%)  sender
[SUM]   0.00-10.00  sec  62.5 MBytes  52.4 Mbits/sec  0.015 ms  0/46862 (0%)  receiver
```

## 100
```
[SUM]   0.00-10.01  sec   125 MBytes   105 Mbits/sec  0.000 ms  0/93554 (0%)  sender
[SUM]   0.00-10.01  sec   125 MBytes   105 Mbits/sec  0.013 ms  0/93554 (0%)  receiver
```


# TCP
## 1 session
### Client
```
# iperf3 -c 172.16.0.5  -p 4545
Connecting to host 172.16.0.5, port 4545
[  5] local 172.16.0.4 port 49068 connected to 172.16.0.5 port 4545
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec  1.40 GBytes  12.0 Gbits/sec    0   1.63 MBytes
[  5]   1.00-2.00   sec  1.38 GBytes  11.9 Gbits/sec  334   1.38 MBytes
[  5]   2.00-3.00   sec  1.38 GBytes  11.9 Gbits/sec   26    920 KBytes
[  5]   3.00-4.00   sec  1.38 GBytes  11.9 Gbits/sec    0   1.39 MBytes
[  5]   4.00-5.00   sec  1.38 GBytes  11.9 Gbits/sec    0   1.47 MBytes
[  5]   5.00-6.00   sec  1.38 GBytes  11.9 Gbits/sec    0   1.47 MBytes
[  5]   6.00-7.00   sec  1.38 GBytes  11.9 Gbits/sec    0   1.48 MBytes
[  5]   7.00-8.00   sec  1.38 GBytes  11.9 Gbits/sec    0   1.49 MBytes
[  5]   8.00-9.00   sec  1.38 GBytes  11.9 Gbits/sec    0   1.49 MBytes
[  5]   9.00-10.00  sec  1.39 GBytes  11.9 Gbits/sec    0   1.49 MBytes
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  13.9 GBytes  11.9 Gbits/sec  360             sender
[  5]   0.00-10.00  sec  13.8 GBytes  11.9 Gbits/sec                  receiver

iperf Done.
```
### Server
```
-----------------------------------------------------------
Server listening on 4545 (test #1)
-----------------------------------------------------------
Accepted connection from 172.16.0.4, port 49066
[  5] local 172.16.0.5 port 4545 connected to 172.16.0.4 port 49068
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-1.00   sec  1.39 GBytes  11.9 Gbits/sec
[  5]   1.00-2.00   sec  1.38 GBytes  11.9 Gbits/sec
[  5]   2.00-3.00   sec  1.38 GBytes  11.9 Gbits/sec
[  5]   3.00-4.00   sec  1.38 GBytes  11.9 Gbits/sec
[  5]   4.00-5.00   sec  1.38 GBytes  11.9 Gbits/sec
[  5]   5.00-6.00   sec  1.38 GBytes  11.9 Gbits/sec
[  5]   6.00-7.00   sec  1.38 GBytes  11.9 Gbits/sec
[  5]   7.00-8.00   sec  1.38 GBytes  11.9 Gbits/sec
[  5]   8.00-9.00   sec  1.38 GBytes  11.9 Gbits/sec
[  5]   9.00-10.00  sec  1.38 GBytes  11.9 Gbits/sec
[  5]  10.00-10.00  sec   384 KBytes  6.25 Gbits/sec
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-10.00  sec  13.8 GBytes  11.9 Gbits/sec                  receiver
```

## 10 sessions
### Client
```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  1.74 GBytes  1.49 Gbits/sec    0             sender
[  5]   0.00-10.00  sec  1.73 GBytes  1.49 Gbits/sec                  receiver
[  7]   0.00-10.00  sec   888 MBytes   745 Mbits/sec    0             sender
[  7]   0.00-10.00  sec   886 MBytes   743 Mbits/sec                  receiver
[  9]   0.00-10.00  sec   900 MBytes   755 Mbits/sec    0             sender
[  9]   0.00-10.00  sec   898 MBytes   753 Mbits/sec                  receiver
[ 11]   0.00-10.00  sec  1.12 GBytes   964 Mbits/sec    2             sender
[ 11]   0.00-10.00  sec  1.12 GBytes   962 Mbits/sec                  receiver
[ 13]   0.00-10.00  sec  1.73 GBytes  1.49 Gbits/sec    0             sender
[ 13]   0.00-10.00  sec  1.73 GBytes  1.48 Gbits/sec                  receiver
[ 15]   0.00-10.00  sec   886 MBytes   743 Mbits/sec    6             sender
[ 15]   0.00-10.00  sec   885 MBytes   742 Mbits/sec                  receiver
[ 17]   0.00-10.00  sec   879 MBytes   737 Mbits/sec    1             sender
[ 17]   0.00-10.00  sec   878 MBytes   736 Mbits/sec                  receiver
[ 19]   0.00-10.00  sec  3.47 GBytes  2.98 Gbits/sec    1             sender
[ 19]   0.00-10.00  sec  3.47 GBytes  2.98 Gbits/sec                  receiver
[ 21]   0.00-10.00  sec  1.18 GBytes  1.01 Gbits/sec    0             sender
[ 21]   0.00-10.00  sec  1.17 GBytes  1.01 Gbits/sec                  receiver
[ 23]   0.00-10.00  sec  1.17 GBytes  1.00 Gbits/sec    0             sender
[ 23]   0.00-10.00  sec  1.17 GBytes  1.00 Gbits/sec                  receiver
[SUM]   0.00-10.00  sec  13.9 GBytes  11.9 Gbits/sec   10             sender
[SUM]   0.00-10.00  sec  13.9 GBytes  11.9 Gbits/sec                  receiver

iperf Done.
```
### Server
```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-10.00  sec  1.73 GBytes  1.49 Gbits/sec                  receiver
[  8]   0.00-10.00  sec   886 MBytes   743 Mbits/sec                  receiver
[ 10]   0.00-10.00  sec   898 MBytes   753 Mbits/sec                  receiver
[ 12]   0.00-10.00  sec  1.12 GBytes   962 Mbits/sec                  receiver
[ 14]   0.00-10.00  sec  1.73 GBytes  1.48 Gbits/sec                  receiver
[ 16]   0.00-10.00  sec   885 MBytes   742 Mbits/sec                  receiver
[ 18]   0.00-10.00  sec   878 MBytes   736 Mbits/sec                  receiver
[ 20]   0.00-10.00  sec  3.47 GBytes  2.98 Gbits/sec                  receiver
[ 22]   0.00-10.00  sec  1.17 GBytes  1.01 Gbits/sec                  receiver
[ 24]   0.00-10.00  sec  1.17 GBytes  1.00 Gbits/sec                  receiver
[SUM]   0.00-10.00  sec  13.9 GBytes  11.9 Gbits/sec                  receiver
```

## 50 sessions
### Client
```
[103]   0.00-10.01  sec   313 MBytes   262 Mbits/sec                  receiver
[SUM]   0.00-10.01  sec  13.9 GBytes  11.9 Gbits/sec  714             sender
[SUM]   0.00-10.01  sec  13.9 GBytes  11.9 Gbits/sec                  receiver
```

### Server
```
[ 96]   0.00-10.01  sec   215 MBytes   180 Mbits/sec                  receiver
[ 98]   0.00-10.01  sec   221 MBytes   185 Mbits/sec                  receiver
[100]   0.00-10.01  sec   280 MBytes   234 Mbits/sec                  receiver
[102]   0.00-10.01  sec   310 MBytes   260 Mbits/sec                  receiver
[104]   0.00-10.01  sec   313 MBytes   262 Mbits/sec                  receiver
[SUM]   0.00-10.01  sec  13.9 GBytes  11.9 Gbits/sec                  receiver
```

## 100 sessions
### client
```
[201]   0.00-10.02  sec   110 MBytes  92.3 Mbits/sec                  receiver
[203]   0.00-10.01  sec   145 MBytes   121 Mbits/sec  220             sender
[203]   0.00-10.02  sec   144 MBytes   120 Mbits/sec                  receiver
[SUM]   0.00-10.01  sec  14.0 GBytes  12.0 Gbits/sec  14273             sender
[SUM]   0.00-10.02  sec  13.9 GBytes  11.9 Gbits/sec                  receiver
```

### Server
```

[200]   0.00-10.02  sec   237 MBytes   199 Mbits/sec                  receiver
[202]   0.00-10.02  sec   110 MBytes  92.3 Mbits/sec                  receiver
[204]   0.00-10.02  sec   144 MBytes   120 Mbits/sec                  receiver
[SUM]   0.00-10.02  sec  13.9 GBytes  11.9 Gbits/sec                  receiver
```
# UDP
## 1 Sessions
### Client
```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total Datagrams
[  5]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/938 (0%)  sender
[  5]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.004 ms  0/938 (0%)  receiver
```

## Server
```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total Datagrams
[  5]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.004 ms  0/938 (0%)  receiver
```

## 10 sessions
### client
```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ 21]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.009 ms  0/938 (0%)  receiver
[ 23]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/938 (0%)  sender
[ 23]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.011 ms  0/938 (0%)  receiver
[SUM]   0.00-10.00  sec  12.5 MBytes  10.5 Mbits/sec  0.000 ms  0/9380 (0%)  sender
[SUM]   0.00-10.00  sec  12.5 MBytes  10.5 Mbits/sec  0.011 ms  0/9380 (0%)  receiver
```
### server
```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ 21]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.009 ms  0/938 (0%)  receiver
[ 23]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.011 ms  0/938 (0%)  receiver
[SUM]   0.00-10.00  sec  12.5 MBytes  10.5 Mbits/sec  0.011 ms  0/9380 (0%)  receiver
-----------------------------------------------------------
```

## 50 sessions
### client
```
[103]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/936 (0%)  sender
[103]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.011 ms  0/936 (0%)  receiver
[SUM]   0.00-10.00  sec  62.5 MBytes  52.4 Mbits/sec  0.000 ms  0/46862 (0%)  sender
[SUM]   0.00-10.00  sec  62.5 MBytes  52.4 Mbits/sec  0.015 ms  0/46862 (0%)  receiver
```           
### server
```
[101]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.007 ms  0/938 (0%)  receiver
[103]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.011 ms  0/936 (0%)  receiver
[SUM]   0.00-10.00  sec  62.5 MBytes  52.4 Mbits/sec  0.015 ms  0/46862 (0%)  receiver
```

## 100 sessions
### client
```
[201]   0.00-10.01  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/936 (0%)  sender
[201]   0.00-10.01  sec  1.25 MBytes  1.05 Mbits/sec  0.012 ms  0/936 (0%)  receiver
[203]   0.00-10.01  sec  1.24 MBytes  1.04 Mbits/sec  0.000 ms  0/933 (0%)  sender
[203]   0.00-10.01  sec  1.24 MBytes  1.04 Mbits/sec  0.032 ms  0/933 (0%)  receiver
[SUM]   0.00-10.01  sec   125 MBytes   105 Mbits/sec  0.000 ms  0/93554 (0%)  sender
[SUM]   0.00-10.01  sec   125 MBytes   105 Mbits/sec  0.013 ms  0/93554 (0%)  receiver
```

### server

```
[197]   0.00-10.01  sec  1.24 MBytes  1.04 Mbits/sec  0.034 ms  0/933 (0%)  receiver
[199]   0.00-10.01  sec  1.25 MBytes  1.04 Mbits/sec  0.008 ms  0/935 (0%)  receiver
[201]   0.00-10.01  sec  1.25 MBytes  1.05 Mbits/sec  0.012 ms  0/936 (0%)  receiver
[203]   0.00-10.01  sec  1.24 MBytes  1.04 Mbits/sec  0.032 ms  0/933 (0%)  receiver
[SUM]   0.00-10.01  sec   125 MBytes   105 Mbits/sec  0.013 ms  0/93554 (0%)  receiver
```