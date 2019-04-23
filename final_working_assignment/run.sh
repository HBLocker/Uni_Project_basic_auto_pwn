#!/bin/bash
echo "3 minutes remaining until scan"
#sleep 60
echo "2 minutes remaining until scan"
#sleep 60
echo "60 seconds remaining"
#sleep 60
echo "full network scan will start..."

ruby IP.rb

sh scan.sh

sh enum.sh

python metasploit.py

sh Output1.sh
python pie_chart.py
echo "All done"
