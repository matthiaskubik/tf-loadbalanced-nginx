#!/bin/bash

apt-get update -y
apt-get install --yes --force-yes nginx

echo "<h1>I am $(cat /sys/class/net/eth0/address)</h1>" > "/var/www/html/index.nginx-debian.html"
