
 
Table of Contents
1.0	General Information	2
1.1 System Overview	2
1.2 Organization of the Manual	2
2.0	System Information	3
2.1 Device Configuration	3
2.2 User access control	3
3.0 Getting Started	4
3.1 Set up and logging in	4
4.0 Using the device	6





 
1.0	 General Information
The purpose of the device is to connect to a network and when connected it will then scan, enumerate, conduct a vulnerability scan, conduct an offensive attack on vulnerability found. The device used is a Raspberry Pi which is already calibrated with automated scripts that perform these tasks when connected to a network. Once the device has completed the jobs, it will then produce a text document containing all results from all the scans. This device was created with the intent of aiding in the defence of potential cyber-attacks against any and all potential victims however there is a strong focus that the most likely beneficiaries from this device would be small/local businesses.  

1.1 System Overview
 The vulnerability scanner will be a Raspberry Pi device which allows the user to scan networks for weaknesses. The device provides multiple scripts that carry out the functions of scanning a network which then outputs a report about the network for the client. The operation of the device is fully functional and it only operates on a kali Linux based machine.

1.2 Organization of the Manual
The user guide will contain four segments which are General Information, System Information, Getting Started and Using the Device 

General Information – 
This part of the user guide will discuss the reasoning behind creating the device and explain the device in simplistic terms.  
System Information – 
This segment will provide a broad summary of the system which will outline the software and hardware requirements of using the device. Also it will contain the configuration of the device and user access control for the Pi.
Getting Started – 
This section will discuss how to use the vulnerability scanner and set up on the network.
Using the device – 
This will provide a comprehensive description of the device functions.




2.0	 System Information 
This segment of the guide will provide a general summary of the device. It will outline the uses of hardware and software requirements, device configuration and user access controls.

2.1 Device Configuration
The Raspberry Pi will function on a kali Linux based machine which will need a connection to the internet. Once these requirements have been met, the device can then be connected to the network and will have a timer of three minutes before automatically running all the scans when the user logs in on the kali Linux based machine.

2.2 User access control
The only people that can use the device, will be the client/owner/manager/developers as they will have to sign a legal binding document regarding the use of the device. So anyone else will not have user credentials for the device.

3.0 Getting Started
In this part of the guide, it will explain how to set up the device against the network so it can run vulnerability scans.

3.1 Set up and logging in
The device has to be plugged into a power source via a Type G plug into a Type G socket to start the Pi. Once this has been completed, the device will power up and begin to initialize all the default configurations for kali linux then ask for the username and password to access the operating system. 
 
Figure 1: ‘Username login’
  
Figure 2: ‘Username password
The default credentials for the system are ‘root’ as the username and ‘toor’ for the password which will then give the user access to the system.
 
Figure 3: ‘Device Desktop’

Furthermore, the device has to be connected to the internet to complete all scans which is done by clicking on the power icon in the top right corner of the screen which will give a drop down menu.
 
Figure 4: ‘Device drop down menu’

In the drop down menu the user would click on the bottom left icon that takes them to the settings page.
Click on Wi-Fi and choose the correct router to connect to for internet usage or plug the device into an Ethernet port and the device should connect to the network. The code will wait for three minutes before running the full scan.
4.0 Using the device
The device once the user has logged in will prompt the user that the scan will begin in the three minutes and going down the timer. Once the timer has complete the user should have connected the device to a network and the script ‘run.sh’ will start the run.

4.1 IP.rb
The first scan the device will run against the network is IP.rb which is a script that has been written to find the IP address of the machine. The reason this scan is of such importance is due to the fact that the other scans would not function without finding the IP address and the device needs the IP address of the machine to discover vulnerabilities within the network by running the other scans. 
 
Figure 5: ‘IP address’


4.2 scan.sh
Furthermore, the device will move onto the next scan called scan.sh which is a script that runs four different scans against the network. The first part is the TCP scan which scans the network for open and closed TCP ports. This will determine what TCP ports are opens which can be later investigated for exploitation.
The next stage of the scan will be the UDP scan which scans the network for closed and open UDP ports. The data gained from this part of the scan will be which open UDP ports can be later investigated for vulnerabilities.
Once the device has completed the UDP scan, it will move onto the Operating System(OS) scan that gains information about the OS running on the machine. The data obtained from this part of the scan will determine what OS the machine is using, description of the OS, the OS generation, device type, a possible company name (etc. Abertay University) and conceivably a timestamp of when the machine was last used. 
Finally, the last part of scan.sh is the firewall scan which will use a standard SYN port scan. This means that the scan will detect closed and filtered TCP ports by using TCP RST packets. The RST packet makes closed ports easy for nmap to recognize then filtering devices like firewalls, are likely to drop packets ordained for disallowed ports. But sometimes a message appears saying port unreachable. The dropped packets and error messages are simply distinguishable from RST packets, nmap can detect filtered TCP ports from open and closed then it does automatically.
Figure 6: ‘scan.sh’






4.3 enum.sh
Once the device has completed the scan.sh. Once that is complete it will move on the next step which the python file ‘metaploit_offensive.py’

 
Figure 7: ‘enum.sh’
4.4 metasploit_offensive.py
After the completion of the scans, the device will automatically begin exploiting the vulnerabilities found. 

 
Figure 8: ‘metasploit_offensive.py




4.5 Output1.sh
The last function of the device is a script that outputs all the information gained from the network to a text document. This text document will contain in order, all the data gained from all scans in a readable format for the user.  
Figure 9: ‘output1.sh’


