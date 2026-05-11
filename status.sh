#!/bin/bash
echo "--- SERVERI STATUS ---"
uptime
echo "--- DOCKER KONTEINERID ---"
sudo docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
echo "--- KETTA KASUTUS ---"
df -h | grep "/dev/mapper"
echo "--- TULEMÜÜR ---"
sudo ufw status | grep "Status"

