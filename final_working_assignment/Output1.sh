#!/bin/bash\

printf "This report has been compiled following a vulnerability scan on your network. This 
		report should outline any vulnerabilities that the scan has identified and if applicable 
		the vulnerability should have been exploited. Included in this report should be all scan 
		results from scans that were completed, details of successful exploitations
		and preventative measures to enhance security aimed at improving overall 
		security on your network  .    >>> \n" >>./OutPut.txt
printf " \n" >>./OutPut.txt
 
printf "This is the IP address >>> \n" >>./OutPut.txt
cat ip.txt >>./OutPut.txt 
printf " \n \n" >>./OutPut.txt

printf "TCP Scan Results >>> \n" >>./OutPut.txt
cat TCP_scan.txt >>./OutPut.txt
printf " \n \n" >>./OutPut.txt
 
printf "UDP Scan Results >>> \n" >>./OutPut.txt
cat UDP_scan.txt >>./OutPut.txt 
printf " \n \n" >>./OutPut.txt

printf "OS Scan Results >>> \n" >>./OutPut.txt
cat OS_scan.txt >>./OutPut.txt 
printf " \n \n" >>./OutPut.txt

printf "Firewall scan results >>> \n" >>./OutPut.txt
cat Firewall_scan.txt >>./OutPut.txt 
printf " \n \n" >>./OutPut.txt

printf "Vulnerabilities Found >>>> \n" >> ./OutPut.txt
cat exploits.txt >> ./OutPut.txt
printf "\n" >> ./OutPut.txt
