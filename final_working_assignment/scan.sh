#!/bin/bash\
file="ip.txt"
while IFS= read -r IP
do
        # display $line or do somthing with $line
        echo "$IP"
done <"$file"
echo "The IP address of this machine is: $IP"


echo "\n                          TCP scan is running"
echo "============================================================================="

nmap "$IP"/24 -sS > TCP_scan.txt

echo "============================================================================="
echo "               TCP scan is complete moving onto UDP scan"
echo "============================================================================="

nmap "$IP"/24 -sU > UDP_scan.txt

echo "============================================================================="
echo "            UDP scan is complete starting Operating System scan"
echo "============================================================================="

nmap "$IP"/24 -A > OS_scan.txt

echo "============================================================================="
echo "            Operating System is complete Starting firewall scan"
echo "============================================================================="

nmap "$IP"/24 -f > Firewall_scan.txt

echo "============================================================================="
echo "\n                     Firewall scan is completed"
echo "                              Scan is complete"
echo "============================================================================="
