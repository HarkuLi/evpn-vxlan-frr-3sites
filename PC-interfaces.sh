#!/bin/sh
sudo docker exec -d clab-frr01-PC1 ip link set eth1 up
sudo docker exec -d clab-frr01-PC1 ip addr add 192.168.11.2/24 dev eth1

sudo docker exec -d clab-frr01-PC2 ip link set eth1 up
sudo docker exec -d clab-frr01-PC2 ip addr add 192.168.12.2/24 dev eth1

sudo docker exec -d clab-frr01-PC3 ip link set eth1 up
sudo docker exec -d clab-frr01-PC3 ip addr add 192.168.13.2/24 dev eth1
