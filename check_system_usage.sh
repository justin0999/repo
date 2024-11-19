#!/bin/bash
echo "System Usage Report - $(date)" >> /var/log/system_usage.log
echo "CPU Usage:" >> /var/log/system_usage.log
top -bn1 | grep "Cpu(s)" >> /var/log/system_usage.log
echo "Memory Usage:" >> /var/log/system_usage.log
free -h >> /var/log/system_usage.log
echo "Disk Usage:" >> /var/log/system_usage.log
df -h >> /var/log/system_usage.log
echo "-----------------------------------" >> /var/log/system_usage.log

