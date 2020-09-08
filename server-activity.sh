#!/usr/bin/sh

# CPU usage in percentage:

CPU=`top -bn1 | grep "Cpu(s)" | awk '{print $4}'`
CPU_USED=`printf '%.*f\n' 0 $CPU`


# Memory in mb:

MEMORY=`top -bn1 | grep "KiB Mem" | awk '{print ($4 - $6)/1024}'`
MEMORY_USED=`printf '%.*f\n' 0 $MEMORY`


# Disk in percentage:

DISK=`df -h | grep "/dev/xvda1" | awk '{print $5}' | sed -e 's/%//'`


# Value to send to mail, if the server usage over a specified threshold:

VALUE="CPU-$CPU_USED% MEMORY-${MEMORY_USED}mb DISK-$DISK%"


# Send Email when cpu, Memory or Disk crossed their threshold level.
# Usage limit is set to 75%.

if [ $CPU_USED -gt 75 -o $MEMORY_USED -gt 750 -o $DISK -gt 75 ]
then
	echo $VALUE
	python3.7 ./send_mail.py $VALUE
else
	echo $VALUE
	echo "Normal"
fi
