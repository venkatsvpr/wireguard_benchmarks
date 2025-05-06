

# Wireguard Setup

# TCP
## 1 Conn
```
[  5]   0.00-10.00  sec  3.05 GBytes  2.62 Gbits/sec  263             sender
[  5]   0.00-10.00  sec  3.04 GBytes  2.61 Gbits/sec                  receiver
```

## 10 Conn
```
[SUM]   0.00-10.00  sec  2.97 GBytes  2.55 Gbits/sec  4162             sender
[SUM]   0.00-10.01  sec  2.96 GBytes  2.54 Gbits/sec                  receiver
```

## 50 Conn
```
[SUM]   0.00-10.01  sec  2.55 GBytes  2.19 Gbits/sec  38434             sender
[SUM]   0.00-10.01  sec  2.53 GBytes  2.17 Gbits/sec                  receiver
```

## 100 Conn
```
[SUM]   0.00-10.01  sec  2.38 GBytes  2.04 Gbits/sec  77158             sender
[SUM]   0.00-10.01  sec  2.35 GBytes  2.01 Gbits/sec                  receiver
```


# TCP
# Run 1 thread
##  Client
```
# iperf3 -c 10.0.0.2 -p 4545
Connecting to host 10.0.0.2, port 4545
[  5] local 10.0.0.1 port 48936 connected to 10.0.0.2 port 4545
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec   326 MBytes  2.74 Gbits/sec  207    732 KBytes
[  5]   1.00-2.00   sec   313 MBytes  2.62 Gbits/sec    0    965 KBytes
[  5]   2.00-3.00   sec   312 MBytes  2.61 Gbits/sec    0   1.14 MBytes
[  5]   3.00-4.00   sec   313 MBytes  2.62 Gbits/sec   13    935 KBytes
[  5]   4.00-5.00   sec   304 MBytes  2.55 Gbits/sec    0   1.12 MBytes
[  5]   5.00-6.00   sec   301 MBytes  2.53 Gbits/sec    0   1.28 MBytes
[  5]   6.00-7.00   sec   313 MBytes  2.62 Gbits/sec   26   1.09 MBytes
[  5]   7.00-8.00   sec   317 MBytes  2.66 Gbits/sec    0   1.25 MBytes
[  5]   8.00-9.00   sec   308 MBytes  2.59 Gbits/sec   17   1.06 MBytes
[  5]   9.00-10.00  sec   311 MBytes  2.61 Gbits/sec    0   1.23 MBytes
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  3.05 GBytes  2.62 Gbits/sec  263             sender
[  5]   0.00-10.00  sec  3.04 GBytes  2.61 Gbits/sec                  receiver

iperf Done.
```

# Server
```
# iperf3 -s -p 4545 -B 10.0.0.2
-----------------------------------------------------------
Server listening on 4545 (test #1)
-----------------------------------------------------------
Accepted connection from 10.0.0.1, port 48924
[  5] local 10.0.0.2 port 4545 connected to 10.0.0.1 port 48936
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-1.00   sec   324 MBytes  2.72 Gbits/sec
[  5]   1.00-2.00   sec   313 MBytes  2.63 Gbits/sec
[  5]   2.00-3.00   sec   311 MBytes  2.61 Gbits/sec
[  5]   3.00-4.00   sec   312 MBytes  2.62 Gbits/sec
[  5]   4.00-5.00   sec   305 MBytes  2.56 Gbits/sec
[  5]   5.00-6.00   sec   300 MBytes  2.52 Gbits/sec
[  5]   6.00-7.00   sec   313 MBytes  2.63 Gbits/sec
[  5]   7.00-8.00   sec   317 MBytes  2.66 Gbits/sec
[  5]   8.00-9.00   sec   308 MBytes  2.59 Gbits/sec
[  5]   9.00-10.00  sec   311 MBytes  2.61 Gbits/sec
[  5]  10.00-10.00  sec  1.25 MBytes  2.71 Gbits/sec
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-10.00  sec  3.04 GBytes  2.61 Gbits/sec                  receiver
```

## 10 threads

### client
```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec   264 MBytes   222 Mbits/sec  387             sender
[  5]   0.00-10.01  sec   263 MBytes   221 Mbits/sec                  receiver
[  7]   0.00-10.00  sec   335 MBytes   281 Mbits/sec  419             sender
[  7]   0.00-10.01  sec   335 MBytes   281 Mbits/sec                  receiver
[  9]   0.00-10.00  sec   278 MBytes   233 Mbits/sec  353             sender
[  9]   0.00-10.01  sec   278 MBytes   233 Mbits/sec                  receiver
[ 11]   0.00-10.00  sec   315 MBytes   264 Mbits/sec  354             sender
[ 11]   0.00-10.01  sec   315 MBytes   264 Mbits/sec                  receiver
[ 13]   0.00-10.00  sec   280 MBytes   235 Mbits/sec  281             sender
[ 13]   0.00-10.01  sec   280 MBytes   235 Mbits/sec                  receiver
[ 15]   0.00-10.00  sec   356 MBytes   298 Mbits/sec  391             sender
[ 15]   0.00-10.01  sec   355 MBytes   298 Mbits/sec                  receiver
[ 17]   0.00-10.00  sec   283 MBytes   237 Mbits/sec  649             sender
[ 17]   0.00-10.01  sec   282 MBytes   236 Mbits/sec                  receiver
[ 19]   0.00-10.00  sec   250 MBytes   210 Mbits/sec  418             sender
[ 19]   0.00-10.01  sec   250 MBytes   209 Mbits/sec                  receiver
[ 21]   0.00-10.00  sec   357 MBytes   300 Mbits/sec  431             sender
[ 21]   0.00-10.01  sec   356 MBytes   299 Mbits/sec                  receiver
[ 23]   0.00-10.00  sec   320 MBytes   268 Mbits/sec  479             sender
[ 23]   0.00-10.01  sec   319 MBytes   267 Mbits/sec                  receiver
[SUM]   0.00-10.00  sec  2.97 GBytes  2.55 Gbits/sec  4162             sender
[SUM]   0.00-10.01  sec  2.96 GBytes  2.54 Gbits/sec                  receiver

```

### server
```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-10.01  sec   263 MBytes   221 Mbits/sec                  receiver
[  7]   0.00-10.01  sec   335 MBytes   281 Mbits/sec                  receiver
[ 10]   0.00-10.01  sec   278 MBytes   233 Mbits/sec                  receiver
[ 12]   0.00-10.01  sec   315 MBytes   264 Mbits/sec                  receiver
[ 14]   0.00-10.01  sec   280 MBytes   235 Mbits/sec                  receiver
[ 16]   0.00-10.01  sec   355 MBytes   298 Mbits/sec                  receiver
[ 18]   0.00-10.01  sec   282 MBytes   236 Mbits/sec                  receiver
[ 20]   0.00-10.01  sec   250 MBytes   209 Mbits/sec                  receiver
[ 22]   0.00-10.01  sec   356 MBytes   299 Mbits/sec                  receiver
[ 24]   0.00-10.01  sec   319 MBytes   267 Mbits/sec                  receiver
[SUM]   0.00-10.01  sec  2.96 GBytes  2.54 Gbits/sec                  receiver
```


## 50 threads
### client
```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.01  sec  50.8 MBytes  42.6 Mbits/sec  848             sender
[  5]   0.00-10.01  sec  50.4 MBytes  42.2 Mbits/sec                  receiver
[  7]   0.00-10.01  sec  49.8 MBytes  41.7 Mbits/sec  710             sender
[  7]   0.00-10.01  sec  49.6 MBytes  41.6 Mbits/sec                  receiver
[  9]   0.00-10.01  sec  51.5 MBytes  43.2 Mbits/sec  706             sender
[  9]   0.00-10.01  sec  51.4 MBytes  43.0 Mbits/sec                  receiver
[ 11]   0.00-10.01  sec  47.9 MBytes  40.1 Mbits/sec  729             sender
[ 11]   0.00-10.01  sec  47.6 MBytes  39.9 Mbits/sec                  receiver
[ 13]   0.00-10.01  sec  55.5 MBytes  46.5 Mbits/sec  720             sender
[ 13]   0.00-10.01  sec  55.2 MBytes  46.3 Mbits/sec                  receiver
[ 15]   0.00-10.01  sec  55.0 MBytes  46.1 Mbits/sec  673             sender
[ 15]   0.00-10.01  sec  54.8 MBytes  45.9 Mbits/sec                  receiver
[ 17]   0.00-10.01  sec  46.9 MBytes  39.3 Mbits/sec  741             sender
[ 17]   0.00-10.01  sec  46.6 MBytes  39.1 Mbits/sec                  receiver
[ 19]   0.00-10.01  sec  57.9 MBytes  48.5 Mbits/sec  725             sender
[ 19]   0.00-10.01  sec  57.8 MBytes  48.4 Mbits/sec                  receiver
[ 21]   0.00-10.01  sec  48.6 MBytes  40.8 Mbits/sec  769             sender
[ 21]   0.00-10.01  sec  48.5 MBytes  40.6 Mbits/sec                  receiver
[ 23]   0.00-10.01  sec  51.0 MBytes  42.8 Mbits/sec  785             sender
[ 23]   0.00-10.01  sec  50.6 MBytes  42.4 Mbits/sec                  receiver
[ 25]   0.00-10.01  sec  53.9 MBytes  45.2 Mbits/sec  820             sender
[ 25]   0.00-10.01  sec  53.4 MBytes  44.7 Mbits/sec                  receiver
[ 27]   0.00-10.01  sec  47.5 MBytes  39.8 Mbits/sec  821             sender
[ 27]   0.00-10.01  sec  47.1 MBytes  39.5 Mbits/sec                  receiver
[ 29]   0.00-10.01  sec  52.2 MBytes  43.8 Mbits/sec  648             sender
[ 29]   0.00-10.01  sec  52.1 MBytes  43.7 Mbits/sec                  receiver
[ 31]   0.00-10.01  sec  47.2 MBytes  39.6 Mbits/sec  735             sender
[ 31]   0.00-10.01  sec  47.0 MBytes  39.4 Mbits/sec                  receiver
[ 33]   0.00-10.01  sec  48.5 MBytes  40.7 Mbits/sec  1038             sender
[ 33]   0.00-10.01  sec  47.5 MBytes  39.8 Mbits/sec                  receiver
[ 35]   0.00-10.01  sec  55.0 MBytes  46.1 Mbits/sec  822             sender
[ 35]   0.00-10.01  sec  54.6 MBytes  45.8 Mbits/sec                  receiver
[ 37]   0.00-10.01  sec  51.6 MBytes  43.3 Mbits/sec  792             sender
[ 37]   0.00-10.01  sec  51.1 MBytes  42.8 Mbits/sec                  receiver
[ 39]   0.00-10.01  sec  54.5 MBytes  45.7 Mbits/sec  727             sender
[ 39]   0.00-10.01  sec  54.2 MBytes  45.5 Mbits/sec                  receiver
[ 41]   0.00-10.01  sec  48.9 MBytes  41.0 Mbits/sec  830             sender
[ 41]   0.00-10.01  sec  48.2 MBytes  40.4 Mbits/sec                  receiver
[ 43]   0.00-10.01  sec  46.9 MBytes  39.3 Mbits/sec  751             sender
[ 43]   0.00-10.01  sec  46.4 MBytes  38.9 Mbits/sec                  receiver
[ 45]   0.00-10.01  sec  51.0 MBytes  42.8 Mbits/sec  831             sender
[ 45]   0.00-10.01  sec  50.5 MBytes  42.3 Mbits/sec                  receiver
[ 47]   0.00-10.01  sec  57.4 MBytes  48.1 Mbits/sec  717             sender
[ 47]   0.00-10.01  sec  57.0 MBytes  47.8 Mbits/sec                  receiver
[ 49]   0.00-10.01  sec  48.5 MBytes  40.7 Mbits/sec  769             sender
[ 49]   0.00-10.01  sec  48.1 MBytes  40.3 Mbits/sec                  receiver
[ 51]   0.00-10.01  sec  50.2 MBytes  42.1 Mbits/sec  857             sender
[ 51]   0.00-10.01  sec  49.9 MBytes  41.8 Mbits/sec                  receiver
[ 53]   0.00-10.01  sec  57.2 MBytes  48.0 Mbits/sec  710             sender
[ 53]   0.00-10.01  sec  57.1 MBytes  47.9 Mbits/sec                  receiver
[ 55]   0.00-10.01  sec  53.5 MBytes  44.9 Mbits/sec  823             sender
[ 55]   0.00-10.01  sec  53.2 MBytes  44.6 Mbits/sec                  receiver
[ 57]   0.00-10.01  sec  51.4 MBytes  43.1 Mbits/sec  827             sender
[ 57]   0.00-10.01  sec  51.1 MBytes  42.8 Mbits/sec                  receiver
[ 59]   0.00-10.01  sec  63.4 MBytes  53.1 Mbits/sec  762             sender
[ 59]   0.00-10.01  sec  63.1 MBytes  52.9 Mbits/sec                  receiver
[ 61]   0.00-10.01  sec  54.1 MBytes  45.4 Mbits/sec  758             sender
[ 61]   0.00-10.01  sec  53.9 MBytes  45.1 Mbits/sec                  receiver
[ 63]   0.00-10.01  sec  50.9 MBytes  42.7 Mbits/sec  1025             sender
[ 63]   0.00-10.01  sec  49.5 MBytes  41.5 Mbits/sec                  receiver
[ 65]   0.00-10.01  sec  62.9 MBytes  52.7 Mbits/sec  720             sender
[ 65]   0.00-10.01  sec  62.5 MBytes  52.4 Mbits/sec                  receiver
[ 67]   0.00-10.01  sec  51.5 MBytes  43.2 Mbits/sec  688             sender
[ 67]   0.00-10.01  sec  51.4 MBytes  43.0 Mbits/sec                  receiver
[ 69]   0.00-10.01  sec  50.0 MBytes  41.9 Mbits/sec  749             sender
[ 69]   0.00-10.01  sec  49.6 MBytes  41.6 Mbits/sec                  receiver
[ 71]   0.00-10.01  sec  51.8 MBytes  43.4 Mbits/sec  708             sender
[ 71]   0.00-10.01  sec  51.5 MBytes  43.2 Mbits/sec                  receiver
[ 73]   0.00-10.01  sec  52.1 MBytes  43.7 Mbits/sec  771             sender
[ 73]   0.00-10.01  sec  51.6 MBytes  43.3 Mbits/sec                  receiver
[ 75]   0.00-10.01  sec  55.9 MBytes  46.8 Mbits/sec  798             sender
[ 75]   0.00-10.01  sec  55.6 MBytes  46.6 Mbits/sec                  receiver
[ 77]   0.00-10.01  sec  54.0 MBytes  45.3 Mbits/sec  780             sender
[ 77]   0.00-10.01  sec  53.5 MBytes  44.8 Mbits/sec                  receiver
[ 79]   0.00-10.01  sec  51.5 MBytes  43.2 Mbits/sec  776             sender
[ 79]   0.00-10.01  sec  51.4 MBytes  43.0 Mbits/sec                  receiver
[ 81]   0.00-10.01  sec  57.1 MBytes  47.9 Mbits/sec  772             sender
[ 81]   0.00-10.01  sec  56.8 MBytes  47.6 Mbits/sec                  receiver
[ 83]   0.00-10.01  sec  57.1 MBytes  47.9 Mbits/sec  824             sender
[ 83]   0.00-10.01  sec  56.9 MBytes  47.7 Mbits/sec                  receiver
[ 85]   0.00-10.01  sec  47.2 MBytes  39.6 Mbits/sec  764             sender
[ 85]   0.00-10.01  sec  47.0 MBytes  39.4 Mbits/sec                  receiver
[ 87]   0.00-10.01  sec  51.0 MBytes  42.8 Mbits/sec  753             sender
[ 87]   0.00-10.01  sec  50.8 MBytes  42.5 Mbits/sec                  receiver
[ 89]   0.00-10.01  sec  49.5 MBytes  41.5 Mbits/sec  736             sender
[ 89]   0.00-10.01  sec  49.4 MBytes  41.4 Mbits/sec                  receiver
[ 91]   0.00-10.01  sec  50.2 MBytes  42.1 Mbits/sec  733             sender
[ 91]   0.00-10.01  sec  50.0 MBytes  41.9 Mbits/sec                  receiver
[ 93]   0.00-10.01  sec  60.9 MBytes  51.0 Mbits/sec  760             sender
[ 93]   0.00-10.01  sec  60.5 MBytes  50.7 Mbits/sec                  receiver
[ 95]   0.00-10.01  sec  45.5 MBytes  38.1 Mbits/sec  856             sender
[ 95]   0.00-10.01  sec  45.2 MBytes  37.9 Mbits/sec                  receiver
[ 97]   0.00-10.01  sec  50.0 MBytes  41.9 Mbits/sec  718             sender
[ 97]   0.00-10.01  sec  49.9 MBytes  41.8 Mbits/sec                  receiver
[ 99]   0.00-10.01  sec  53.4 MBytes  44.8 Mbits/sec  652             sender
[ 99]   0.00-10.01  sec  53.1 MBytes  44.5 Mbits/sec                  receiver
[101]   0.00-10.01  sec  48.6 MBytes  40.8 Mbits/sec  725             sender
[101]   0.00-10.01  sec  48.5 MBytes  40.6 Mbits/sec                  receiver
[103]   0.00-10.01  sec  49.0 MBytes  41.1 Mbits/sec  682             sender
[103]   0.00-10.01  sec  48.8 MBytes  40.8 Mbits/sec                  receiver
[SUM]   0.00-10.01  sec  2.55 GBytes  2.19 Gbits/sec  38434             sender
[SUM]   0.00-10.01  sec  2.53 GBytes  2.17 Gbits/sec                  receiver
```
### server
```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-10.01  sec  50.4 MBytes  42.2 Mbits/sec                  receiver
[  7]   0.00-10.01  sec  49.6 MBytes  41.6 Mbits/sec                  receiver
[ 10]   0.00-10.01  sec  51.4 MBytes  43.0 Mbits/sec                  receiver
[ 12]   0.00-10.01  sec  47.6 MBytes  39.9 Mbits/sec                  receiver
[ 14]   0.00-10.01  sec  55.2 MBytes  46.3 Mbits/sec                  receiver
[ 16]   0.00-10.01  sec  54.8 MBytes  45.9 Mbits/sec                  receiver
[ 18]   0.00-10.01  sec  46.6 MBytes  39.1 Mbits/sec                  receiver
[ 20]   0.00-10.01  sec  57.8 MBytes  48.4 Mbits/sec                  receiver
[ 22]   0.00-10.01  sec  48.5 MBytes  40.6 Mbits/sec                  receiver
[ 24]   0.00-10.01  sec  50.6 MBytes  42.4 Mbits/sec                  receiver
[ 26]   0.00-10.01  sec  53.4 MBytes  44.7 Mbits/sec                  receiver
[ 28]   0.00-10.01  sec  47.1 MBytes  39.5 Mbits/sec                  receiver
[ 30]   0.00-10.01  sec  52.1 MBytes  43.7 Mbits/sec                  receiver
[ 32]   0.00-10.01  sec  47.0 MBytes  39.4 Mbits/sec                  receiver
[ 34]   0.00-10.01  sec  47.5 MBytes  39.8 Mbits/sec                  receiver
[ 36]   0.00-10.01  sec  54.6 MBytes  45.8 Mbits/sec                  receiver
[ 38]   0.00-10.01  sec  51.1 MBytes  42.8 Mbits/sec                  receiver
[ 40]   0.00-10.01  sec  54.2 MBytes  45.5 Mbits/sec                  receiver
[ 42]   0.00-10.01  sec  48.2 MBytes  40.4 Mbits/sec                  receiver
[ 44]   0.00-10.01  sec  46.4 MBytes  38.9 Mbits/sec                  receiver
[ 46]   0.00-10.01  sec  50.5 MBytes  42.3 Mbits/sec                  receiver
[ 48]   0.00-10.01  sec  57.0 MBytes  47.8 Mbits/sec                  receiver
[ 50]   0.00-10.01  sec  48.1 MBytes  40.3 Mbits/sec                  receiver
[ 52]   0.00-10.01  sec  49.9 MBytes  41.8 Mbits/sec                  receiver
[ 54]   0.00-10.01  sec  57.1 MBytes  47.9 Mbits/sec                  receiver
[ 56]   0.00-10.01  sec  53.2 MBytes  44.6 Mbits/sec                  receiver
[ 58]   0.00-10.01  sec  51.1 MBytes  42.8 Mbits/sec                  receiver
[ 60]   0.00-10.01  sec  63.1 MBytes  52.9 Mbits/sec                  receiver
[ 62]   0.00-10.01  sec  53.9 MBytes  45.1 Mbits/sec                  receiver
[ 64]   0.00-10.01  sec  49.5 MBytes  41.5 Mbits/sec                  receiver
[ 66]   0.00-10.01  sec  62.5 MBytes  52.4 Mbits/sec                  receiver
[ 68]   0.00-10.01  sec  51.4 MBytes  43.0 Mbits/sec                  receiver
[ 70]   0.00-10.01  sec  49.6 MBytes  41.6 Mbits/sec                  receiver
[ 72]   0.00-10.01  sec  51.5 MBytes  43.2 Mbits/sec                  receiver
[ 74]   0.00-10.01  sec  51.6 MBytes  43.3 Mbits/sec                  receiver
[ 76]   0.00-10.01  sec  55.6 MBytes  46.6 Mbits/sec                  receiver
[ 78]   0.00-10.01  sec  53.5 MBytes  44.8 Mbits/sec                  receiver
[ 80]   0.00-10.01  sec  51.4 MBytes  43.0 Mbits/sec                  receiver
[ 82]   0.00-10.01  sec  56.8 MBytes  47.6 Mbits/sec                  receiver
[ 84]   0.00-10.01  sec  56.9 MBytes  47.7 Mbits/sec                  receiver
[ 86]   0.00-10.01  sec  47.0 MBytes  39.4 Mbits/sec                  receiver
[ 88]   0.00-10.01  sec  50.8 MBytes  42.5 Mbits/sec                  receiver
[ 90]   0.00-10.01  sec  49.4 MBytes  41.4 Mbits/sec                  receiver
[ 92]   0.00-10.01  sec  50.0 MBytes  41.9 Mbits/sec                  receiver
[ 94]   0.00-10.01  sec  60.5 MBytes  50.7 Mbits/sec                  receiver
[ 96]   0.00-10.01  sec  45.2 MBytes  37.9 Mbits/sec                  receiver
[ 98]   0.00-10.01  sec  49.9 MBytes  41.8 Mbits/sec                  receiver
[100]   0.00-10.01  sec  53.1 MBytes  44.5 Mbits/sec                  receiver
[102]   0.00-10.01  sec  48.5 MBytes  40.6 Mbits/sec                  receiver
[104]   0.00-10.01  sec  48.8 MBytes  40.8 Mbits/sec                  receiver
[SUM]   0.00-10.01  sec  2.53 GBytes  2.17 Gbits/sec                  receiver
```
## 100 threads

### server
```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.01  sec  32.2 MBytes  27.0 Mbits/sec  956             sender
[  5]   0.00-10.01  sec  31.6 MBytes  26.5 Mbits/sec                  receiver
[  7]   0.00-10.01  sec  22.5 MBytes  18.9 Mbits/sec  723             sender
[  7]   0.00-10.01  sec  22.2 MBytes  18.6 Mbits/sec                  receiver
[  9]   0.00-10.01  sec  27.5 MBytes  23.0 Mbits/sec  886             sender
[  9]   0.00-10.01  sec  27.1 MBytes  22.7 Mbits/sec                  receiver
[ 11]   0.00-10.01  sec  23.6 MBytes  19.8 Mbits/sec  762             sender
[ 11]   0.00-10.01  sec  23.5 MBytes  19.7 Mbits/sec                  receiver
[ 13]   0.00-10.01  sec  23.8 MBytes  19.9 Mbits/sec  797             sender
[ 13]   0.00-10.01  sec  23.0 MBytes  19.3 Mbits/sec                  receiver
[ 15]   0.00-10.01  sec  21.2 MBytes  17.8 Mbits/sec  692             sender
[ 15]   0.00-10.01  sec  21.0 MBytes  17.6 Mbits/sec                  receiver
[ 17]   0.00-10.01  sec  26.0 MBytes  21.8 Mbits/sec  765             sender
[ 17]   0.00-10.01  sec  26.0 MBytes  21.8 Mbits/sec                  receiver
[ 19]   0.00-10.01  sec  24.5 MBytes  20.5 Mbits/sec  720             sender
[ 19]   0.00-10.01  sec  24.5 MBytes  20.5 Mbits/sec                  receiver
[ 21]   0.00-10.01  sec  23.4 MBytes  19.6 Mbits/sec  860             sender
[ 21]   0.00-10.01  sec  22.8 MBytes  19.1 Mbits/sec                  receiver
[ 23]   0.00-10.01  sec  27.5 MBytes  23.0 Mbits/sec  752             sender
[ 23]   0.00-10.01  sec  27.0 MBytes  22.6 Mbits/sec                  receiver
[ 25]   0.00-10.01  sec  22.2 MBytes  18.6 Mbits/sec  797             sender
[ 25]   0.00-10.01  sec  21.6 MBytes  18.1 Mbits/sec                  receiver
[ 27]   0.00-10.01  sec  25.9 MBytes  21.7 Mbits/sec  760             sender
[ 27]   0.00-10.01  sec  25.8 MBytes  21.6 Mbits/sec                  receiver
[ 29]   0.00-10.01  sec  26.9 MBytes  22.5 Mbits/sec  753             sender
[ 29]   0.00-10.01  sec  26.8 MBytes  22.4 Mbits/sec                  receiver
[ 31]   0.00-10.01  sec  23.8 MBytes  19.9 Mbits/sec  765             sender
[ 31]   0.00-10.01  sec  23.5 MBytes  19.7 Mbits/sec                  receiver
[ 33]   0.00-10.01  sec  20.0 MBytes  16.8 Mbits/sec  693             sender
[ 33]   0.00-10.01  sec  19.9 MBytes  16.6 Mbits/sec                  receiver
[ 35]   0.00-10.01  sec  28.8 MBytes  24.1 Mbits/sec  885             sender
[ 35]   0.00-10.01  sec  28.0 MBytes  23.5 Mbits/sec                  receiver
[ 37]   0.00-10.01  sec  28.0 MBytes  23.5 Mbits/sec  934             sender
[ 37]   0.00-10.01  sec  27.1 MBytes  22.7 Mbits/sec                  receiver
[ 39]   0.00-10.01  sec  23.0 MBytes  19.3 Mbits/sec  724             sender
[ 39]   0.00-10.01  sec  22.8 MBytes  19.1 Mbits/sec                  receiver
[ 41]   0.00-10.01  sec  22.2 MBytes  18.6 Mbits/sec  726             sender
[ 41]   0.00-10.01  sec  22.0 MBytes  18.4 Mbits/sec                  receiver
[ 43]   0.00-10.01  sec  28.0 MBytes  23.5 Mbits/sec  904             sender
[ 43]   0.00-10.01  sec  27.2 MBytes  22.8 Mbits/sec                  receiver
[ 45]   0.00-10.01  sec  29.9 MBytes  25.0 Mbits/sec  922             sender
[ 45]   0.00-10.01  sec  28.8 MBytes  24.1 Mbits/sec                  receiver
[ 47]   0.00-10.01  sec  19.8 MBytes  16.6 Mbits/sec  712             sender
[ 47]   0.00-10.01  sec  19.8 MBytes  16.5 Mbits/sec                  receiver
[ 49]   0.00-10.01  sec  25.2 MBytes  21.2 Mbits/sec  768             sender
[ 49]   0.00-10.01  sec  25.1 MBytes  21.0 Mbits/sec                  receiver
[ 51]   0.00-10.01  sec  23.1 MBytes  19.4 Mbits/sec  776             sender
[ 51]   0.00-10.01  sec  22.6 MBytes  19.0 Mbits/sec                  receiver
[ 53]   0.00-10.01  sec  25.2 MBytes  21.2 Mbits/sec  745             sender
[ 53]   0.00-10.01  sec  25.0 MBytes  20.9 Mbits/sec                  receiver
[ 55]   0.00-10.01  sec  26.5 MBytes  22.2 Mbits/sec  752             sender
[ 55]   0.00-10.01  sec  26.2 MBytes  22.0 Mbits/sec                  receiver
[ 57]   0.00-10.01  sec  19.4 MBytes  16.2 Mbits/sec  704             sender
[ 57]   0.00-10.01  sec  19.1 MBytes  16.0 Mbits/sec                  receiver
[ 59]   0.00-10.01  sec  22.5 MBytes  18.9 Mbits/sec  741             sender
[ 59]   0.00-10.01  sec  22.4 MBytes  18.7 Mbits/sec                  receiver
[ 61]   0.00-10.01  sec  26.5 MBytes  22.2 Mbits/sec  729             sender
[ 61]   0.00-10.01  sec  26.4 MBytes  22.1 Mbits/sec                  receiver
[ 63]   0.00-10.01  sec  29.5 MBytes  24.7 Mbits/sec  782             sender
[ 63]   0.00-10.01  sec  29.2 MBytes  24.5 Mbits/sec                  receiver
[ 65]   0.00-10.01  sec  21.2 MBytes  17.8 Mbits/sec  862             sender
[ 65]   0.00-10.01  sec  20.5 MBytes  17.2 Mbits/sec                  receiver
[ 67]   0.00-10.01  sec  28.5 MBytes  23.9 Mbits/sec  881             sender
[ 67]   0.00-10.01  sec  28.4 MBytes  23.8 Mbits/sec                  receiver
[ 69]   0.00-10.01  sec  25.6 MBytes  21.5 Mbits/sec  718             sender
[ 69]   0.00-10.01  sec  25.4 MBytes  21.3 Mbits/sec                  receiver
[ 71]   0.00-10.01  sec  26.0 MBytes  21.8 Mbits/sec  847             sender
[ 71]   0.00-10.01  sec  25.5 MBytes  21.4 Mbits/sec                  receiver
[ 73]   0.00-10.01  sec  21.4 MBytes  17.9 Mbits/sec  649             sender
[ 73]   0.00-10.01  sec  21.1 MBytes  17.7 Mbits/sec                  receiver
[ 75]   0.00-10.01  sec  22.5 MBytes  18.9 Mbits/sec  775             sender
[ 75]   0.00-10.01  sec  22.2 MBytes  18.6 Mbits/sec                  receiver
[ 77]   0.00-10.01  sec  16.4 MBytes  13.7 Mbits/sec  662             sender
[ 77]   0.00-10.01  sec  16.1 MBytes  13.5 Mbits/sec                  receiver
[ 79]   0.00-10.01  sec  22.1 MBytes  18.5 Mbits/sec  807             sender
[ 79]   0.00-10.01  sec  21.4 MBytes  17.9 Mbits/sec                  receiver
[ 81]   0.00-10.01  sec  26.1 MBytes  21.9 Mbits/sec  885             sender
[ 81]   0.00-10.01  sec  25.5 MBytes  21.4 Mbits/sec                  receiver
[ 83]   0.00-10.01  sec  26.0 MBytes  21.8 Mbits/sec  826             sender
[ 83]   0.00-10.01  sec  25.6 MBytes  21.5 Mbits/sec                  receiver
[ 85]   0.00-10.01  sec  21.1 MBytes  17.7 Mbits/sec  708             sender
[ 85]   0.00-10.01  sec  21.0 MBytes  17.6 Mbits/sec                  receiver
[ 87]   0.00-10.01  sec  24.6 MBytes  20.6 Mbits/sec  770             sender
[ 87]   0.00-10.01  sec  24.5 MBytes  20.5 Mbits/sec                  receiver
[ 89]   0.00-10.01  sec  18.6 MBytes  15.6 Mbits/sec  887             sender
[ 89]   0.00-10.01  sec  17.8 MBytes  14.9 Mbits/sec                  receiver
[ 91]   0.00-10.01  sec  27.5 MBytes  23.0 Mbits/sec  886             sender
[ 91]   0.00-10.01  sec  26.2 MBytes  22.0 Mbits/sec                  receiver
[ 93]   0.00-10.01  sec  24.0 MBytes  20.1 Mbits/sec  733             sender
[ 93]   0.00-10.01  sec  23.9 MBytes  20.0 Mbits/sec                  receiver
[ 95]   0.00-10.01  sec  28.5 MBytes  23.9 Mbits/sec  874             sender
[ 95]   0.00-10.01  sec  27.9 MBytes  23.3 Mbits/sec                  receiver
[ 97]   0.00-10.01  sec  26.4 MBytes  22.1 Mbits/sec  788             sender
[ 97]   0.00-10.01  sec  26.2 MBytes  22.0 Mbits/sec                  receiver
[ 99]   0.00-10.01  sec  25.5 MBytes  21.4 Mbits/sec  802             sender
[ 99]   0.00-10.01  sec  25.2 MBytes  21.2 Mbits/sec                  receiver
[101]   0.00-10.01  sec  28.5 MBytes  23.9 Mbits/sec  830             sender
[101]   0.00-10.01  sec  28.2 MBytes  23.7 Mbits/sec                  receiver
[103]   0.00-10.01  sec  19.8 MBytes  16.6 Mbits/sec  740             sender
[103]   0.00-10.01  sec  19.5 MBytes  16.3 Mbits/sec                  receiver
[105]   0.00-10.01  sec  23.1 MBytes  19.4 Mbits/sec  697             sender
[105]   0.00-10.01  sec  23.0 MBytes  19.3 Mbits/sec                  receiver
[107]   0.00-10.01  sec  26.8 MBytes  22.4 Mbits/sec  745             sender
[107]   0.00-10.01  sec  26.6 MBytes  22.3 Mbits/sec                  receiver
[109]   0.00-10.01  sec  28.6 MBytes  24.0 Mbits/sec  892             sender
[109]   0.00-10.01  sec  27.5 MBytes  23.0 Mbits/sec                  receiver
[111]   0.00-10.01  sec  24.4 MBytes  20.4 Mbits/sec  757             sender
[111]   0.00-10.01  sec  24.0 MBytes  20.1 Mbits/sec                  receiver
[113]   0.00-10.01  sec  26.9 MBytes  22.5 Mbits/sec  701             sender
[113]   0.00-10.01  sec  26.6 MBytes  22.3 Mbits/sec                  receiver
[115]   0.00-10.01  sec  27.5 MBytes  23.0 Mbits/sec  818             sender
[115]   0.00-10.01  sec  27.2 MBytes  22.8 Mbits/sec                  receiver
[117]   0.00-10.01  sec  24.8 MBytes  20.7 Mbits/sec  699             sender
[117]   0.00-10.01  sec  24.4 MBytes  20.4 Mbits/sec                  receiver
[119]   0.00-10.01  sec  20.5 MBytes  17.2 Mbits/sec  714             sender
[119]   0.00-10.01  sec  20.4 MBytes  17.1 Mbits/sec                  receiver
[121]   0.00-10.01  sec  25.2 MBytes  21.2 Mbits/sec  751             sender
[121]   0.00-10.01  sec  25.1 MBytes  21.0 Mbits/sec                  receiver
[123]   0.00-10.01  sec  23.1 MBytes  19.4 Mbits/sec  792             sender
[123]   0.00-10.01  sec  22.8 MBytes  19.1 Mbits/sec                  receiver
[125]   0.00-10.01  sec  28.0 MBytes  23.5 Mbits/sec  709             sender
[125]   0.00-10.01  sec  27.6 MBytes  23.1 Mbits/sec                  receiver
[127]   0.00-10.01  sec  22.9 MBytes  19.2 Mbits/sec  784             sender
[127]   0.00-10.01  sec  22.6 MBytes  19.0 Mbits/sec                  receiver
[129]   0.00-10.01  sec  24.6 MBytes  20.6 Mbits/sec  749             sender
[129]   0.00-10.01  sec  24.4 MBytes  20.4 Mbits/sec                  receiver
[131]   0.00-10.01  sec  24.0 MBytes  20.1 Mbits/sec  738             sender
[131]   0.00-10.01  sec  23.8 MBytes  19.9 Mbits/sec                  receiver
[133]   0.00-10.01  sec  24.1 MBytes  20.2 Mbits/sec  840             sender
[133]   0.00-10.01  sec  23.6 MBytes  19.8 Mbits/sec                  receiver
[135]   0.00-10.01  sec  28.9 MBytes  24.2 Mbits/sec  735             sender
[135]   0.00-10.01  sec  28.6 MBytes  24.0 Mbits/sec                  receiver
[137]   0.00-10.01  sec  17.5 MBytes  14.7 Mbits/sec  728             sender
[137]   0.00-10.01  sec  17.1 MBytes  14.3 Mbits/sec                  receiver
[139]   0.00-10.01  sec  20.5 MBytes  17.2 Mbits/sec  678             sender
[139]   0.00-10.01  sec  20.2 MBytes  17.0 Mbits/sec                  receiver
[141]   0.00-10.01  sec  27.1 MBytes  22.7 Mbits/sec  718             sender
[141]   0.00-10.01  sec  26.9 MBytes  22.5 Mbits/sec                  receiver
[143]   0.00-10.01  sec  25.9 MBytes  21.7 Mbits/sec  749             sender
[143]   0.00-10.01  sec  25.6 MBytes  21.5 Mbits/sec                  receiver
[145]   0.00-10.01  sec  21.1 MBytes  17.7 Mbits/sec  736             sender
[145]   0.00-10.01  sec  21.0 MBytes  17.6 Mbits/sec                  receiver
[147]   0.00-10.01  sec  21.8 MBytes  18.2 Mbits/sec  608             sender
[147]   0.00-10.01  sec  21.8 MBytes  18.2 Mbits/sec                  receiver
[149]   0.00-10.01  sec  25.2 MBytes  21.2 Mbits/sec  616             sender
[149]   0.00-10.01  sec  25.1 MBytes  21.0 Mbits/sec                  receiver
[151]   0.00-10.01  sec  24.9 MBytes  20.8 Mbits/sec  789             sender
[151]   0.00-10.01  sec  24.8 MBytes  20.7 Mbits/sec                  receiver
[153]   0.00-10.01  sec  26.5 MBytes  22.2 Mbits/sec  779             sender
[153]   0.00-10.01  sec  26.2 MBytes  22.0 Mbits/sec                  receiver
[155]   0.00-10.01  sec  24.0 MBytes  20.1 Mbits/sec  822             sender
[155]   0.00-10.01  sec  23.9 MBytes  20.0 Mbits/sec                  receiver
[157]   0.00-10.01  sec  16.8 MBytes  14.0 Mbits/sec  744             sender
[157]   0.00-10.01  sec  16.8 MBytes  14.0 Mbits/sec                  receiver
[159]   0.00-10.01  sec  25.9 MBytes  21.7 Mbits/sec  829             sender
[159]   0.00-10.01  sec  25.6 MBytes  21.5 Mbits/sec                  receiver
[161]   0.00-10.01  sec  27.8 MBytes  23.3 Mbits/sec  802             sender
[161]   0.00-10.01  sec  27.4 MBytes  22.9 Mbits/sec                  receiver
[163]   0.00-10.01  sec  23.8 MBytes  19.9 Mbits/sec  710             sender
[163]   0.00-10.01  sec  23.6 MBytes  19.8 Mbits/sec                  receiver
[165]   0.00-10.01  sec  26.0 MBytes  21.8 Mbits/sec  735             sender
[165]   0.00-10.01  sec  25.9 MBytes  21.7 Mbits/sec                  receiver
[167]   0.00-10.01  sec  20.1 MBytes  16.9 Mbits/sec  653             sender
[167]   0.00-10.01  sec  19.9 MBytes  16.6 Mbits/sec                  receiver
[169]   0.00-10.01  sec  20.9 MBytes  17.5 Mbits/sec  703             sender
[169]   0.00-10.01  sec  20.8 MBytes  17.4 Mbits/sec                  receiver
[171]   0.00-10.01  sec  23.6 MBytes  19.8 Mbits/sec  707             sender
[171]   0.00-10.01  sec  23.5 MBytes  19.7 Mbits/sec                  receiver
[173]   0.00-10.01  sec  28.0 MBytes  23.5 Mbits/sec  790             sender
[173]   0.00-10.01  sec  27.8 MBytes  23.2 Mbits/sec                  receiver
[175]   0.00-10.01  sec  23.0 MBytes  19.3 Mbits/sec  823             sender
[175]   0.00-10.01  sec  22.6 MBytes  19.0 Mbits/sec                  receiver
[177]   0.00-10.01  sec  26.9 MBytes  22.5 Mbits/sec  969             sender
[177]   0.00-10.01  sec  26.2 MBytes  22.0 Mbits/sec                  receiver
[179]   0.00-10.01  sec  21.1 MBytes  17.7 Mbits/sec  771             sender
[179]   0.00-10.01  sec  20.5 MBytes  17.2 Mbits/sec                  receiver
[181]   0.00-10.01  sec  21.0 MBytes  17.6 Mbits/sec  768             sender
[181]   0.00-10.01  sec  20.9 MBytes  17.5 Mbits/sec                  receiver
[183]   0.00-10.01  sec  30.1 MBytes  25.2 Mbits/sec  781             sender
[183]   0.00-10.01  sec  30.0 MBytes  25.1 Mbits/sec                  receiver
[185]   0.00-10.01  sec  27.1 MBytes  22.7 Mbits/sec  897             sender
[185]   0.00-10.01  sec  26.8 MBytes  22.4 Mbits/sec                  receiver
[187]   0.00-10.01  sec  23.6 MBytes  19.8 Mbits/sec  654             sender
[187]   0.00-10.01  sec  23.5 MBytes  19.7 Mbits/sec                  receiver
[189]   0.00-10.01  sec  18.2 MBytes  15.3 Mbits/sec  651             sender
[189]   0.00-10.01  sec  18.1 MBytes  15.2 Mbits/sec                  receiver
[191]   0.00-10.01  sec  26.6 MBytes  22.3 Mbits/sec  795             sender
[191]   0.00-10.01  sec  26.5 MBytes  22.2 Mbits/sec                  receiver
[193]   0.00-10.01  sec  24.6 MBytes  20.6 Mbits/sec  766             sender
[193]   0.00-10.01  sec  24.4 MBytes  20.4 Mbits/sec                  receiver
[195]   0.00-10.01  sec  25.1 MBytes  21.1 Mbits/sec  857             sender
[195]   0.00-10.01  sec  24.6 MBytes  20.6 Mbits/sec                  receiver
[197]   0.00-10.01  sec  21.0 MBytes  17.6 Mbits/sec  762             sender
[197]   0.00-10.01  sec  20.8 MBytes  17.4 Mbits/sec                  receiver
[199]   0.00-10.01  sec  21.8 MBytes  18.2 Mbits/sec  763             sender
[199]   0.00-10.01  sec  21.6 MBytes  18.1 Mbits/sec                  receiver
[201]   0.00-10.01  sec  20.2 MBytes  17.0 Mbits/sec  719             sender
[201]   0.00-10.01  sec  20.1 MBytes  16.9 Mbits/sec                  receiver
[203]   0.00-10.01  sec  24.6 MBytes  20.6 Mbits/sec  750             sender
[203]   0.00-10.01  sec  24.5 MBytes  20.5 Mbits/sec                  receiver
[SUM]   0.00-10.01  sec  2.38 GBytes  2.04 Gbits/sec  77158             sender
[SUM]   0.00-10.01  sec  2.35 GBytes  2.01 Gbits/sec                  receiver

iperf Done.
```
# server
```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate
[  5]   0.00-10.01  sec  31.6 MBytes  26.5 Mbits/sec                  receiver
[  7]   0.00-10.01  sec  22.2 MBytes  18.6 Mbits/sec                  receiver
[ 10]   0.00-10.01  sec  27.1 MBytes  22.7 Mbits/sec                  receiver
[ 12]   0.00-10.01  sec  23.5 MBytes  19.7 Mbits/sec                  receiver
[ 14]   0.00-10.01  sec  23.0 MBytes  19.3 Mbits/sec                  receiver
[ 16]   0.00-10.01  sec  21.0 MBytes  17.6 Mbits/sec                  receiver
[ 18]   0.00-10.01  sec  26.0 MBytes  21.8 Mbits/sec                  receiver
[ 20]   0.00-10.01  sec  24.5 MBytes  20.5 Mbits/sec                  receiver
[ 22]   0.00-10.01  sec  22.8 MBytes  19.1 Mbits/sec                  receiver
[ 24]   0.00-10.01  sec  27.0 MBytes  22.6 Mbits/sec                  receiver
[ 26]   0.00-10.01  sec  21.6 MBytes  18.1 Mbits/sec                  receiver
[ 28]   0.00-10.01  sec  25.8 MBytes  21.6 Mbits/sec                  receiver
[ 30]   0.00-10.01  sec  26.8 MBytes  22.4 Mbits/sec                  receiver
[ 32]   0.00-10.01  sec  23.5 MBytes  19.7 Mbits/sec                  receiver
[ 34]   0.00-10.01  sec  19.9 MBytes  16.6 Mbits/sec                  receiver
[ 36]   0.00-10.01  sec  28.0 MBytes  23.5 Mbits/sec                  receiver
[ 38]   0.00-10.01  sec  27.1 MBytes  22.7 Mbits/sec                  receiver
[ 40]   0.00-10.01  sec  22.8 MBytes  19.1 Mbits/sec                  receiver
[ 42]   0.00-10.01  sec  22.0 MBytes  18.4 Mbits/sec                  receiver
[ 44]   0.00-10.01  sec  27.2 MBytes  22.8 Mbits/sec                  receiver
[ 46]   0.00-10.01  sec  28.8 MBytes  24.1 Mbits/sec                  receiver
[ 48]   0.00-10.01  sec  19.8 MBytes  16.5 Mbits/sec                  receiver
[ 50]   0.00-10.01  sec  25.1 MBytes  21.0 Mbits/sec                  receiver
[ 52]   0.00-10.01  sec  22.6 MBytes  19.0 Mbits/sec                  receiver
[ 54]   0.00-10.01  sec  25.0 MBytes  20.9 Mbits/sec                  receiver
[ 56]   0.00-10.01  sec  26.2 MBytes  22.0 Mbits/sec                  receiver
[ 58]   0.00-10.01  sec  19.1 MBytes  16.0 Mbits/sec                  receiver
[ 60]   0.00-10.01  sec  22.4 MBytes  18.7 Mbits/sec                  receiver
[ 62]   0.00-10.01  sec  26.4 MBytes  22.1 Mbits/sec                  receiver
[ 64]   0.00-10.01  sec  29.2 MBytes  24.5 Mbits/sec                  receiver
[ 66]   0.00-10.01  sec  20.5 MBytes  17.2 Mbits/sec                  receiver
[ 68]   0.00-10.01  sec  28.4 MBytes  23.8 Mbits/sec                  receiver
[ 70]   0.00-10.01  sec  25.4 MBytes  21.3 Mbits/sec                  receiver
[ 72]   0.00-10.01  sec  25.5 MBytes  21.4 Mbits/sec                  receiver
[ 74]   0.00-10.01  sec  21.1 MBytes  17.7 Mbits/sec                  receiver
[ 76]   0.00-10.01  sec  22.2 MBytes  18.6 Mbits/sec                  receiver
[ 78]   0.00-10.01  sec  16.1 MBytes  13.5 Mbits/sec                  receiver
[ 80]   0.00-10.01  sec  21.4 MBytes  17.9 Mbits/sec                  receiver
[ 82]   0.00-10.01  sec  25.5 MBytes  21.4 Mbits/sec                  receiver
[ 84]   0.00-10.01  sec  25.6 MBytes  21.5 Mbits/sec                  receiver
[ 86]   0.00-10.01  sec  21.0 MBytes  17.6 Mbits/sec                  receiver
[ 88]   0.00-10.01  sec  24.5 MBytes  20.5 Mbits/sec                  receiver
[ 90]   0.00-10.01  sec  17.8 MBytes  14.9 Mbits/sec                  receiver
[ 92]   0.00-10.01  sec  26.2 MBytes  22.0 Mbits/sec                  receiver
[ 94]   0.00-10.01  sec  23.9 MBytes  20.0 Mbits/sec                  receiver
[ 96]   0.00-10.01  sec  27.9 MBytes  23.3 Mbits/sec                  receiver
[ 98]   0.00-10.01  sec  26.2 MBytes  22.0 Mbits/sec                  receiver
[100]   0.00-10.01  sec  25.2 MBytes  21.2 Mbits/sec                  receiver
[102]   0.00-10.01  sec  28.2 MBytes  23.7 Mbits/sec                  receiver
[104]   0.00-10.01  sec  19.5 MBytes  16.3 Mbits/sec                  receiver
[106]   0.00-10.01  sec  23.0 MBytes  19.3 Mbits/sec                  receiver
[108]   0.00-10.01  sec  26.6 MBytes  22.3 Mbits/sec                  receiver
[110]   0.00-10.01  sec  27.5 MBytes  23.0 Mbits/sec                  receiver
[112]   0.00-10.01  sec  24.0 MBytes  20.1 Mbits/sec                  receiver
[114]   0.00-10.01  sec  26.6 MBytes  22.3 Mbits/sec                  receiver
[116]   0.00-10.01  sec  27.2 MBytes  22.8 Mbits/sec                  receiver
[118]   0.00-10.01  sec  24.4 MBytes  20.4 Mbits/sec                  receiver
[120]   0.00-10.01  sec  20.4 MBytes  17.1 Mbits/sec                  receiver
[122]   0.00-10.01  sec  25.1 MBytes  21.0 Mbits/sec                  receiver
[124]   0.00-10.01  sec  22.8 MBytes  19.1 Mbits/sec                  receiver
[126]   0.00-10.01  sec  27.6 MBytes  23.1 Mbits/sec                  receiver
[128]   0.00-10.01  sec  22.6 MBytes  19.0 Mbits/sec                  receiver
[130]   0.00-10.01  sec  24.4 MBytes  20.4 Mbits/sec                  receiver
[132]   0.00-10.01  sec  23.8 MBytes  19.9 Mbits/sec                  receiver
[134]   0.00-10.01  sec  23.6 MBytes  19.8 Mbits/sec                  receiver
[136]   0.00-10.01  sec  28.6 MBytes  24.0 Mbits/sec                  receiver
[138]   0.00-10.01  sec  17.1 MBytes  14.3 Mbits/sec                  receiver
[140]   0.00-10.01  sec  20.2 MBytes  17.0 Mbits/sec                  receiver
[142]   0.00-10.01  sec  26.9 MBytes  22.5 Mbits/sec                  receiver
[144]   0.00-10.01  sec  25.6 MBytes  21.5 Mbits/sec                  receiver
[146]   0.00-10.01  sec  21.0 MBytes  17.6 Mbits/sec                  receiver
[148]   0.00-10.01  sec  21.8 MBytes  18.2 Mbits/sec                  receiver
[150]   0.00-10.01  sec  25.1 MBytes  21.0 Mbits/sec                  receiver
[152]   0.00-10.01  sec  24.8 MBytes  20.7 Mbits/sec                  receiver
[154]   0.00-10.01  sec  26.2 MBytes  22.0 Mbits/sec                  receiver
[156]   0.00-10.01  sec  23.9 MBytes  20.0 Mbits/sec                  receiver
[158]   0.00-10.01  sec  16.8 MBytes  14.0 Mbits/sec                  receiver
[160]   0.00-10.01  sec  25.6 MBytes  21.5 Mbits/sec                  receiver
[162]   0.00-10.01  sec  27.4 MBytes  22.9 Mbits/sec                  receiver
[164]   0.00-10.01  sec  23.6 MBytes  19.8 Mbits/sec                  receiver
[166]   0.00-10.01  sec  25.9 MBytes  21.7 Mbits/sec                  receiver
[168]   0.00-10.01  sec  19.9 MBytes  16.6 Mbits/sec                  receiver
[170]   0.00-10.01  sec  20.8 MBytes  17.4 Mbits/sec                  receiver
[172]   0.00-10.01  sec  23.5 MBytes  19.7 Mbits/sec                  receiver
[174]   0.00-10.01  sec  27.8 MBytes  23.2 Mbits/sec                  receiver
[176]   0.00-10.01  sec  22.6 MBytes  19.0 Mbits/sec                  receiver
[178]   0.00-10.01  sec  26.2 MBytes  22.0 Mbits/sec                  receiver
[180]   0.00-10.01  sec  20.5 MBytes  17.2 Mbits/sec                  receiver
[182]   0.00-10.01  sec  20.9 MBytes  17.5 Mbits/sec                  receiver
[184]   0.00-10.01  sec  30.0 MBytes  25.1 Mbits/sec                  receiver
[186]   0.00-10.01  sec  26.8 MBytes  22.4 Mbits/sec                  receiver
[188]   0.00-10.01  sec  23.5 MBytes  19.7 Mbits/sec                  receiver
[190]   0.00-10.01  sec  18.1 MBytes  15.2 Mbits/sec                  receiver
[192]   0.00-10.01  sec  26.5 MBytes  22.2 Mbits/sec                  receiver
[194]   0.00-10.01  sec  24.4 MBytes  20.4 Mbits/sec                  receiver
[196]   0.00-10.01  sec  24.6 MBytes  20.6 Mbits/sec                  receiver
[198]   0.00-10.01  sec  20.8 MBytes  17.4 Mbits/sec                  receiver
[200]   0.00-10.01  sec  21.6 MBytes  18.1 Mbits/sec                  receiver
[202]   0.00-10.01  sec  20.1 MBytes  16.9 Mbits/sec                  receiver
[204]   0.00-10.01  sec  24.5 MBytes  20.5 Mbits/sec                  receiver
[SUM]   0.00-10.01  sec  2.35 GBytes  2.01 Gbits/sec                  receiver
```
# Run UDP test ( single connection )
## client
```
# iperf3 -c 10.0.0.2 -p 4545 -u
Connecting to host 10.0.0.2, port 4545
[  5] local 10.0.0.1 port 43504 connected to 10.0.0.2 port 4545
[ ID] Interval           Transfer     Bitrate         Total Datagrams
[  5]   0.00-1.00   sec   128 KBytes  1.05 Mbits/sec  96
[  5]   1.00-2.00   sec   128 KBytes  1.05 Mbits/sec  96
[  5]   2.00-3.00   sec   128 KBytes  1.05 Mbits/sec  96
[  5]   3.00-4.00   sec   128 KBytes  1.05 Mbits/sec  96
[  5]   4.00-5.00   sec   127 KBytes  1.04 Mbits/sec  95
[  5]   5.00-6.00   sec   128 KBytes  1.05 Mbits/sec  96
[  5]   6.00-7.00   sec   128 KBytes  1.05 Mbits/sec  96
[  5]   7.00-8.00   sec   128 KBytes  1.05 Mbits/sec  96
[  5]   8.00-9.00   sec   128 KBytes  1.05 Mbits/sec  96
[  5]   9.00-10.00  sec   128 KBytes  1.05 Mbits/sec  96
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total Datagrams
[  5]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[  5]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.016 ms  0/959 (0%)  receiver

iperf Done.
```

# Server

```
# iperf3 -s -p 4545 -B 10.0.0.2
-----------------------------------------------------------
Server listening on 4545 (test #1)
-----------------------------------------------------------
Accepted connection from 10.0.0.1, port 49318
[  5] local 10.0.0.2 port 4545 connected to 10.0.0.1 port 43504
[ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total Datagrams
[  5]   0.00-1.00   sec   128 KBytes  1.05 Mbits/sec  0.017 ms  0/96 (0%)
[  5]   1.00-2.00   sec   128 KBytes  1.05 Mbits/sec  0.012 ms  0/96 (0%)
[  5]   2.00-3.00   sec   128 KBytes  1.05 Mbits/sec  0.022 ms  0/96 (0%)
[  5]   3.00-4.00   sec   128 KBytes  1.05 Mbits/sec  0.021 ms  0/96 (0%)
[  5]   4.00-5.00   sec   127 KBytes  1.04 Mbits/sec  0.022 ms  0/95 (0%)
[  5]   5.00-6.00   sec   128 KBytes  1.05 Mbits/sec  0.020 ms  0/96 (0%)
[  5]   6.00-7.00   sec   128 KBytes  1.05 Mbits/sec  0.023 ms  0/96 (0%)
[  5]   7.00-8.00   sec   128 KBytes  1.05 Mbits/sec  0.033 ms  0/96 (0%)
[  5]   8.00-9.00   sec   128 KBytes  1.05 Mbits/sec  0.020 ms  0/96 (0%)
[  5]   9.00-10.00  sec   128 KBytes  1.05 Mbits/sec  0.016 ms  0/96 (0%)
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total Datagrams
[  5]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.016 ms  0/959 (0%)  receiver
```

# 10 Connections

# Client
```
[ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total Datagrams
[  5]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[  5]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.034 ms  0/959 (0%)  receiver
[  7]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[  7]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.048 ms  0/959 (0%)  receiver
[  9]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[  9]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.036 ms  0/959 (0%)  receiver
[ 11]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 11]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.040 ms  0/959 (0%)  receiver
[ 13]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 13]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.033 ms  0/959 (0%)  receiver
[ 15]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 15]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.034 ms  0/959 (0%)  receiver
[ 17]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 17]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.032 ms  0/959 (0%)  receiver
[ 19]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 19]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.051 ms  0/959 (0%)  receiver
[ 21]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 21]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.216 ms  0/959 (0%)  receiver
[ 23]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 23]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.042 ms  0/959 (0%)  receiver
[SUM]   0.00-10.00  sec  12.5 MBytes  10.5 Mbits/sec  0.000 ms  0/9590 (0%)  sender
[SUM]   0.00-10.00  sec  12.5 MBytes  10.5 Mbits/sec  0.056 ms  0/9590 (0%)  receiver
```

# Server
```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total Datagrams
[  5]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.034 ms  0/959 (0%)  receiver
[  6]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.048 ms  0/959 (0%)  receiver
[  9]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.036 ms  0/959 (0%)  receiver
[ 11]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.040 ms  0/959 (0%)  receiver
[ 13]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.033 ms  0/959 (0%)  receiver
[ 15]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.034 ms  0/959 (0%)  receiver
[ 17]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.032 ms  0/959 (0%)  receiver
[ 19]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.051 ms  0/959 (0%)  receiver
[ 21]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.216 ms  0/959 (0%)  receiver
[ 23]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.042 ms  0/959 (0%)  receiver
[SUM]   0.00-10.00  sec  12.5 MBytes  10.5 Mbits/sec  0.056 ms  0/9590 (0%)  receiver
```

# 50 parallel threads

# client
```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total Datagrams
[  5]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[  5]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.019 ms  0/959 (0%)  receiver
[  7]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[  7]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.021 ms  0/959 (0%)  receiver
[  9]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/957 (0%)  sender
[  9]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.017 ms  0/957 (0%)  receiver
[ 11]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[ 11]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.036 ms  0/958 (0%)  receiver
[ 13]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 13]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.022 ms  0/959 (0%)  receiver
[ 15]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/957 (0%)  sender
[ 15]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.048 ms  0/957 (0%)  receiver
[ 17]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[ 17]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.021 ms  0/958 (0%)  receiver
[ 19]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 19]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.092 ms  0/959 (0%)  receiver
[ 21]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 21]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/959 (0%)  receiver
[ 23]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 23]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.018 ms  0/959 (0%)  receiver
[ 25]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 25]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.019 ms  0/959 (0%)  receiver
[ 27]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/956 (0%)  sender
[ 27]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.032 ms  0/956 (0%)  receiver
[ 29]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[ 29]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.023 ms  0/958 (0%)  receiver
[ 31]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 31]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.041 ms  0/959 (0%)  receiver
[ 33]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 33]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.031 ms  0/959 (0%)  receiver
[ 35]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/956 (0%)  sender
[ 35]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.021 ms  0/956 (0%)  receiver
[ 37]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[ 37]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.021 ms  0/958 (0%)  receiver
[ 39]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/956 (0%)  sender
[ 39]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.018 ms  0/956 (0%)  receiver
[ 41]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[ 41]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.026 ms  0/958 (0%)  receiver
[ 43]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 43]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.033 ms  0/959 (0%)  receiver
[ 45]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/957 (0%)  sender
[ 45]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.038 ms  0/957 (0%)  receiver
[ 47]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/957 (0%)  sender
[ 47]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.075 ms  0/957 (0%)  receiver
[ 49]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 49]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.026 ms  0/959 (0%)  receiver
[ 51]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 51]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.034 ms  0/959 (0%)  receiver
[ 53]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[ 53]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.021 ms  0/958 (0%)  receiver
[ 55]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 55]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.027 ms  0/959 (0%)  receiver
[ 57]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 57]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.023 ms  0/959 (0%)  receiver
[ 59]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 59]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.029 ms  0/959 (0%)  receiver
[ 61]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 61]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.023 ms  0/959 (0%)  receiver
[ 63]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 63]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.044 ms  0/959 (0%)  receiver
[ 65]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 65]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.028 ms  0/959 (0%)  receiver
[ 67]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[ 67]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.016 ms  0/958 (0%)  receiver
[ 69]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/957 (0%)  sender
[ 69]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.039 ms  0/957 (0%)  receiver
[ 71]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 71]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.031 ms  0/959 (0%)  receiver
[ 73]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 73]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.026 ms  0/959 (0%)  receiver
[ 75]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 75]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.125 ms  0/959 (0%)  receiver
[ 77]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[ 77]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  1.196 ms  0/958 (0%)  receiver
[ 79]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/957 (0%)  sender
[ 79]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.019 ms  0/957 (0%)  receiver
[ 81]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/957 (0%)  sender
[ 81]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.343 ms  0/957 (0%)  receiver
[ 83]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/957 (0%)  sender
[ 83]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.024 ms  0/957 (0%)  receiver
[ 85]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[ 85]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.024 ms  0/958 (0%)  receiver
[ 87]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 87]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.023 ms  0/959 (0%)  receiver
[ 89]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 89]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.025 ms  0/959 (0%)  receiver
[ 91]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[ 91]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.022 ms  0/958 (0%)  receiver
[ 93]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 93]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.051 ms  0/959 (0%)  receiver
[ 95]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 95]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.028 ms  0/959 (0%)  receiver
[ 97]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/956 (0%)  sender
[ 97]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.032 ms  0/956 (0%)  receiver
[ 99]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[ 99]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.027 ms  0/958 (0%)  receiver
[101]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/957 (0%)  sender
[101]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.055 ms  0/957 (0%)  receiver
[103]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/957 (0%)  sender
[103]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.022 ms  0/957 (0%)  receiver
[SUM]   0.00-10.00  sec  62.5 MBytes  52.4 Mbits/sec  0.000 ms  0/47907 (0%)  sender
[SUM]   0.00-10.00  sec  62.5 MBytes  52.4 Mbits/sec  0.062 ms  0/47907 (0%)  receiver

iperf Done.
```

# Server
```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total Datagrams
[  5]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.019 ms  0/959 (0%)  receiver
[  6]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.021 ms  0/959 (0%)  receiver
[  9]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.017 ms  0/957 (0%)  receiver
[ 11]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.036 ms  0/958 (0%)  receiver
[ 13]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.022 ms  0/959 (0%)  receiver
[ 15]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.048 ms  0/957 (0%)  receiver
[ 17]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.021 ms  0/958 (0%)  receiver
[ 19]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.092 ms  0/959 (0%)  receiver
[ 21]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/959 (0%)  receiver
[ 23]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.018 ms  0/959 (0%)  receiver
[ 25]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.019 ms  0/959 (0%)  receiver
[ 27]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.032 ms  0/956 (0%)  receiver
[ 29]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.023 ms  0/958 (0%)  receiver
[ 31]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.041 ms  0/959 (0%)  receiver
[ 33]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.031 ms  0/959 (0%)  receiver
[ 35]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.021 ms  0/956 (0%)  receiver
[ 37]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.021 ms  0/958 (0%)  receiver
[ 39]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.018 ms  0/956 (0%)  receiver
[ 41]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.026 ms  0/958 (0%)  receiver
[ 43]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.033 ms  0/959 (0%)  receiver
[ 45]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.038 ms  0/957 (0%)  receiver
[ 47]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.075 ms  0/957 (0%)  receiver
[ 49]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.026 ms  0/959 (0%)  receiver
[ 51]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.034 ms  0/959 (0%)  receiver
[ 53]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.021 ms  0/958 (0%)  receiver
[ 55]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.027 ms  0/959 (0%)  receiver
[ 57]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.023 ms  0/959 (0%)  receiver
[ 59]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.029 ms  0/959 (0%)  receiver
[ 61]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.023 ms  0/959 (0%)  receiver
[ 63]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.044 ms  0/959 (0%)  receiver
[ 65]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.028 ms  0/959 (0%)  receiver
[ 67]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.016 ms  0/958 (0%)  receiver
[ 69]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.039 ms  0/957 (0%)  receiver
[ 71]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.031 ms  0/959 (0%)  receiver
[ 73]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.026 ms  0/959 (0%)  receiver
[ 75]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.125 ms  0/959 (0%)  receiver
[ 77]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  1.196 ms  0/958 (0%)  receiver
[ 79]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.019 ms  0/957 (0%)  receiver
[ 81]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.343 ms  0/957 (0%)  receiver
[ 83]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.024 ms  0/957 (0%)  receiver
[ 85]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.024 ms  0/958 (0%)  receiver
[ 87]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.023 ms  0/959 (0%)  receiver
[ 89]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.025 ms  0/959 (0%)  receiver
[ 91]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.022 ms  0/958 (0%)  receiver
[ 93]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.051 ms  0/959 (0%)  receiver
[ 95]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.028 ms  0/959 (0%)  receiver
[ 97]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.032 ms  0/956 (0%)  receiver
[ 99]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.027 ms  0/958 (0%)  receiver
[101]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.055 ms  0/957 (0%)  receiver
[103]   0.00-10.00  sec  1.25 MBytes  1.05 Mbits/sec  0.022 ms  0/957 (0%)  receiver
[SUM]   0.00-10.00  sec  62.5 MBytes  52.4 Mbits/sec  0.062 ms  0/47907 (0%)  receiver
```

# 100 Parallel threads

## client
```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total Datagrams
[  5]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[  5]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.021 ms  0/959 (0%)  receiver
[  7]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[  7]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.036 ms  0/959 (0%)  receiver
[  9]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[  9]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.035 ms  0/959 (0%)  receiver
[ 11]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/960 (0%)  sender
[ 11]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.035 ms  0/960 (0%)  receiver
[ 13]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/955 (0%)  sender
[ 13]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.036 ms  0/955 (0%)  receiver
[ 15]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/955 (0%)  sender
[ 15]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.033 ms  0/955 (0%)  receiver
[ 17]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/956 (0%)  sender
[ 17]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.020 ms  0/956 (0%)  receiver
[ 19]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[ 19]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.022 ms  0/958 (0%)  receiver
[ 21]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/955 (0%)  sender
[ 21]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.034 ms  0/955 (0%)  receiver
[ 23]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 23]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/959 (0%)  receiver
[ 25]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[ 25]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.024 ms  0/958 (0%)  receiver
[ 27]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 27]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.028 ms  0/959 (0%)  receiver
[ 29]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[ 29]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.022 ms  0/961 (0%)  receiver
[ 31]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/957 (0%)  sender
[ 31]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.035 ms  0/957 (0%)  receiver
[ 33]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/957 (0%)  sender
[ 33]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.018 ms  0/957 (0%)  receiver
[ 35]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/956 (0%)  sender
[ 35]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.030 ms  0/956 (0%)  receiver
[ 37]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/955 (0%)  sender
[ 37]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.023 ms  0/955 (0%)  receiver
[ 39]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/960 (0%)  sender
[ 39]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.020 ms  0/960 (0%)  receiver
[ 41]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/955 (0%)  sender
[ 41]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.017 ms  0/955 (0%)  receiver
[ 43]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/955 (0%)  sender
[ 43]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.022 ms  0/955 (0%)  receiver
[ 45]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/956 (0%)  sender
[ 45]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.044 ms  0/956 (0%)  receiver
[ 47]   0.00-10.03  sec  1.24 MBytes  1.04 Mbits/sec  0.000 ms  0/951 (0%)  sender
[ 47]   0.00-10.03  sec  1.24 MBytes  1.04 Mbits/sec  0.027 ms  0/951 (0%)  receiver
[ 49]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[ 49]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.028 ms  0/958 (0%)  receiver
[ 51]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/955 (0%)  sender
[ 51]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.028 ms  0/955 (0%)  receiver
[ 53]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[ 53]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.024 ms  0/961 (0%)  receiver
[ 55]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[ 55]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.033 ms  0/961 (0%)  receiver
[ 57]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[ 57]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.019 ms  0/961 (0%)  receiver
[ 59]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/960 (0%)  sender
[ 59]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.018 ms  0/960 (0%)  receiver
[ 61]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/956 (0%)  sender
[ 61]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.024 ms  0/956 (0%)  receiver
[ 63]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/960 (0%)  sender
[ 63]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.026 ms  0/960 (0%)  receiver
[ 65]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 65]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.035 ms  0/959 (0%)  receiver
[ 67]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[ 67]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.022 ms  0/958 (0%)  receiver
[ 69]   0.00-10.03  sec  1.24 MBytes  1.04 Mbits/sec  0.000 ms  0/954 (0%)  sender
[ 69]   0.00-10.03  sec  1.24 MBytes  1.04 Mbits/sec  0.027 ms  0/954 (0%)  receiver
[ 71]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/956 (0%)  sender
[ 71]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.048 ms  0/956 (0%)  receiver
[ 73]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[ 73]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.037 ms  0/961 (0%)  receiver
[ 75]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/960 (0%)  sender
[ 75]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.031 ms  0/960 (0%)  receiver
[ 77]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/957 (0%)  sender
[ 77]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.031 ms  0/957 (0%)  receiver
[ 79]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/960 (0%)  sender
[ 79]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.048 ms  0/960 (0%)  receiver
[ 81]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 81]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.028 ms  0/959 (0%)  receiver
[ 83]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/956 (0%)  sender
[ 83]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.026 ms  0/956 (0%)  receiver
[ 85]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/960 (0%)  sender
[ 85]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.051 ms  0/960 (0%)  receiver
[ 87]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[ 87]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.019 ms  0/961 (0%)  receiver
[ 89]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[ 89]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/961 (0%)  receiver
[ 91]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[ 91]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.050 ms  0/959 (0%)  receiver
[ 93]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[ 93]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.058 ms  0/958 (0%)  receiver
[ 95]   0.00-10.03  sec  1.24 MBytes  1.04 Mbits/sec  0.000 ms  0/954 (0%)  sender
[ 95]   0.00-10.03  sec  1.24 MBytes  1.04 Mbits/sec  0.024 ms  0/954 (0%)  receiver
[ 97]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/960 (0%)  sender
[ 97]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.028 ms  0/960 (0%)  receiver
[ 99]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/957 (0%)  sender
[ 99]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.030 ms  0/957 (0%)  receiver
[101]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[101]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.031 ms  0/961 (0%)  receiver
[103]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[103]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.038 ms  0/959 (0%)  receiver
[105]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[105]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.034 ms  0/958 (0%)  receiver
[107]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[107]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.029 ms  0/959 (0%)  receiver
[109]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/960 (0%)  sender
[109]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/960 (0%)  receiver
[111]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[111]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.045 ms  0/959 (0%)  receiver
[113]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/960 (0%)  sender
[113]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.033 ms  0/960 (0%)  receiver
[115]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[115]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.027 ms  0/961 (0%)  receiver
[117]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[117]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.029 ms  0/961 (0%)  receiver
[119]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/955 (0%)  sender
[119]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.041 ms  0/955 (0%)  receiver
[121]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/957 (0%)  sender
[121]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.154 ms  0/957 (0%)  receiver
[123]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[123]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.052 ms  0/958 (0%)  receiver
[125]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/955 (0%)  sender
[125]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.038 ms  0/955 (0%)  receiver
[127]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/957 (0%)  sender
[127]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.041 ms  0/957 (0%)  receiver
[129]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/957 (0%)  sender
[129]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.026 ms  0/957 (0%)  receiver
[131]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[131]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.025 ms  0/961 (0%)  receiver
[133]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[133]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.032 ms  0/959 (0%)  receiver
[135]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/957 (0%)  sender
[135]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.055 ms  0/957 (0%)  receiver
[137]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[137]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.046 ms  0/959 (0%)  receiver
[139]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/960 (0%)  sender
[139]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.027 ms  0/960 (0%)  receiver
[141]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[141]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.073 ms  0/961 (0%)  receiver
[143]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[143]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/961 (0%)  receiver
[145]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[145]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.029 ms  0/961 (0%)  receiver
[147]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[147]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.065 ms  0/961 (0%)  receiver
[149]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[149]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.026 ms  0/961 (0%)  receiver
[151]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/957 (0%)  sender
[151]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.017 ms  0/957 (0%)  receiver
[153]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[153]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.029 ms  0/959 (0%)  receiver
[155]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[155]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.017 ms  0/958 (0%)  receiver
[157]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[157]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.018 ms  0/961 (0%)  receiver
[159]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[159]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.023 ms  0/959 (0%)  receiver
[161]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/960 (0%)  sender
[161]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/960 (0%)  receiver
[163]   0.00-10.03  sec  1.24 MBytes  1.04 Mbits/sec  0.000 ms  0/952 (0%)  sender
[163]   0.00-10.03  sec  1.24 MBytes  1.04 Mbits/sec  0.027 ms  0/952 (0%)  receiver
[165]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/957 (0%)  sender
[165]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.066 ms  0/957 (0%)  receiver
[167]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[167]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.025 ms  0/961 (0%)  receiver
[169]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/957 (0%)  sender
[169]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.030 ms  0/957 (0%)  receiver
[171]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/957 (0%)  sender
[171]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.034 ms  0/957 (0%)  receiver
[173]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/956 (0%)  sender
[173]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.028 ms  0/956 (0%)  receiver
[175]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/960 (0%)  sender
[175]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.021 ms  0/960 (0%)  receiver
[177]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/957 (0%)  sender
[177]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.039 ms  0/957 (0%)  receiver
[179]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[179]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.013 ms  0/961 (0%)  receiver
[181]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/958 (0%)  sender
[181]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.083 ms  0/958 (0%)  receiver
[183]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/960 (0%)  sender
[183]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.028 ms  0/960 (0%)  receiver
[185]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/956 (0%)  sender
[185]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.031 ms  0/956 (0%)  receiver
[187]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[187]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/961 (0%)  receiver
[189]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[189]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.021 ms  0/961 (0%)  receiver
[191]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.000 ms  0/955 (0%)  sender
[191]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.048 ms  0/955 (0%)  receiver
[193]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[193]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/959 (0%)  receiver
[195]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/960 (0%)  sender
[195]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.017 ms  0/960 (0%)  receiver
[197]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/959 (0%)  sender
[197]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.017 ms  0/959 (0%)  receiver
[199]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[199]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.035 ms  0/961 (0%)  receiver
[201]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/960 (0%)  sender
[201]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.037 ms  0/960 (0%)  receiver
[203]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.000 ms  0/961 (0%)  sender
[203]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/961 (0%)  receiver
[SUM]   0.00-10.03  sec   125 MBytes   105 Mbits/sec  0.000 ms  0/95838 (0%)  sender
[SUM]   0.00-10.03  sec   125 MBytes   105 Mbits/sec  0.033 ms  0/95838 (0%)  receiver
```

## server
```
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total Datagrams
[  5]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.021 ms  0/959 (0%)  receiver
[  6]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.036 ms  0/959 (0%)  receiver
[  9]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.035 ms  0/959 (0%)  receiver
[ 11]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.035 ms  0/960 (0%)  receiver
[ 13]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.036 ms  0/955 (0%)  receiver
[ 15]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.033 ms  0/955 (0%)  receiver
[ 17]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.020 ms  0/956 (0%)  receiver
[ 19]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.022 ms  0/958 (0%)  receiver
[ 21]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.034 ms  0/955 (0%)  receiver
[ 23]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/959 (0%)  receiver
[ 25]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.024 ms  0/958 (0%)  receiver
[ 27]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.028 ms  0/959 (0%)  receiver
[ 29]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.022 ms  0/961 (0%)  receiver
[ 31]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.035 ms  0/957 (0%)  receiver
[ 33]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.018 ms  0/957 (0%)  receiver
[ 35]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.030 ms  0/956 (0%)  receiver
[ 37]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.023 ms  0/955 (0%)  receiver
[ 39]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.020 ms  0/960 (0%)  receiver
[ 41]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.017 ms  0/955 (0%)  receiver
[ 43]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.022 ms  0/955 (0%)  receiver
[ 45]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.044 ms  0/956 (0%)  receiver
[ 47]   0.00-10.03  sec  1.24 MBytes  1.04 Mbits/sec  0.027 ms  0/951 (0%)  receiver
[ 49]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.028 ms  0/958 (0%)  receiver
[ 51]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.028 ms  0/955 (0%)  receiver
[ 53]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.024 ms  0/961 (0%)  receiver
[ 55]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.033 ms  0/961 (0%)  receiver
[ 57]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.019 ms  0/961 (0%)  receiver
[ 59]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.018 ms  0/960 (0%)  receiver
[ 61]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.024 ms  0/956 (0%)  receiver
[ 63]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.026 ms  0/960 (0%)  receiver
[ 65]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.035 ms  0/959 (0%)  receiver
[ 67]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.022 ms  0/958 (0%)  receiver
[ 69]   0.00-10.03  sec  1.24 MBytes  1.04 Mbits/sec  0.027 ms  0/954 (0%)  receiver
[ 71]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.048 ms  0/956 (0%)  receiver
[ 73]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.037 ms  0/961 (0%)  receiver
[ 75]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.031 ms  0/960 (0%)  receiver
[ 77]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.031 ms  0/957 (0%)  receiver
[ 79]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.048 ms  0/960 (0%)  receiver
[ 81]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.028 ms  0/959 (0%)  receiver
[ 83]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.026 ms  0/956 (0%)  receiver
[ 85]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.051 ms  0/960 (0%)  receiver
[ 87]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.019 ms  0/961 (0%)  receiver
[ 89]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/961 (0%)  receiver
[ 91]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.050 ms  0/959 (0%)  receiver
[ 93]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.058 ms  0/958 (0%)  receiver
[ 95]   0.00-10.03  sec  1.24 MBytes  1.04 Mbits/sec  0.024 ms  0/954 (0%)  receiver
[ 97]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.028 ms  0/960 (0%)  receiver
[ 99]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.030 ms  0/957 (0%)  receiver
[101]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.031 ms  0/961 (0%)  receiver
[103]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.038 ms  0/959 (0%)  receiver
[105]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.034 ms  0/958 (0%)  receiver
[107]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.029 ms  0/959 (0%)  receiver
[109]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/960 (0%)  receiver
[111]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.045 ms  0/959 (0%)  receiver
[113]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.033 ms  0/960 (0%)  receiver
[115]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.027 ms  0/961 (0%)  receiver
[117]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.029 ms  0/961 (0%)  receiver
[119]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.041 ms  0/955 (0%)  receiver
[121]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.154 ms  0/957 (0%)  receiver
[123]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.052 ms  0/958 (0%)  receiver
[125]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.038 ms  0/955 (0%)  receiver
[127]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.041 ms  0/957 (0%)  receiver
[129]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.026 ms  0/957 (0%)  receiver
[131]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.025 ms  0/961 (0%)  receiver
[133]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.032 ms  0/959 (0%)  receiver
[135]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.055 ms  0/957 (0%)  receiver
[137]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.046 ms  0/959 (0%)  receiver
[139]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.027 ms  0/960 (0%)  receiver
[141]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.073 ms  0/961 (0%)  receiver
[143]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/961 (0%)  receiver
[145]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.029 ms  0/961 (0%)  receiver
[147]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.065 ms  0/961 (0%)  receiver
[149]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.026 ms  0/961 (0%)  receiver
[151]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.017 ms  0/957 (0%)  receiver
[153]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.029 ms  0/959 (0%)  receiver
[155]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.017 ms  0/958 (0%)  receiver
[157]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.018 ms  0/961 (0%)  receiver
[159]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.023 ms  0/959 (0%)  receiver
[161]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/960 (0%)  receiver
[163]   0.00-10.03  sec  1.24 MBytes  1.04 Mbits/sec  0.027 ms  0/952 (0%)  receiver
[165]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.066 ms  0/957 (0%)  receiver
[167]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.025 ms  0/961 (0%)  receiver
[169]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.030 ms  0/957 (0%)  receiver
[171]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.034 ms  0/957 (0%)  receiver
[173]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.028 ms  0/956 (0%)  receiver
[175]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.021 ms  0/960 (0%)  receiver
[177]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.039 ms  0/957 (0%)  receiver
[179]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.013 ms  0/961 (0%)  receiver
[181]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.083 ms  0/958 (0%)  receiver
[183]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.028 ms  0/960 (0%)  receiver
[185]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.031 ms  0/956 (0%)  receiver
[187]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/961 (0%)  receiver
[189]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.021 ms  0/961 (0%)  receiver
[191]   0.00-10.03  sec  1.25 MBytes  1.04 Mbits/sec  0.048 ms  0/955 (0%)  receiver
[193]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/959 (0%)  receiver
[195]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.017 ms  0/960 (0%)  receiver
[197]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.017 ms  0/959 (0%)  receiver
[199]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.035 ms  0/961 (0%)  receiver
[201]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.037 ms  0/960 (0%)  receiver
[203]   0.00-10.03  sec  1.25 MBytes  1.05 Mbits/sec  0.030 ms  0/961 (0%)  receiver
[SUM]   0.00-10.03  sec   125 MBytes   105 Mbits/sec  0.033 ms  0/95838 (0%)  receiver
```
