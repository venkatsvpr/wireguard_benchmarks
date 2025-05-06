#!/bin/bash
apt-get update -y
apt-get upgrade -y

# Install k6
sudo gpg -k
sudo gpg --no-default-keyring --keyring /usr/share/keyrings/k6-archive-keyring.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C5AD17C747E3415A3642D57D77C6C491D6AC1D69
sudo "deb [signed-by=/usr/share/keyrings/k6-archive-keyring.gpg] https://dl.k6.io/deb stable main" | sudo tee /etc/apt/sources.list.d/k6.list

# Install tools
sudo apt-get install k6 -y
sudo apt-get install wireguard-tools -y
sudo apt-get install iperf3 -y
sudo apt-get install curl -y
