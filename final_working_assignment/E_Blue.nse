Starting Nmap 7.70 ( https://nmap.org ) at 2019-02-19 05:46 EST
Nmap scan report for 192.168.1.1
Host is up (0.00040s latency).
Not shown: 65521 closed ports
PORT      STATE SERVICE         VERSION
22/tcp    open  ssh             (protocol 2.0)
| fingerprint-strings: 
|   NULL: 
|_    SSH-2.0-OpenSSH_7.1p1 Microsoft_Win32_port_with_VS
135/tcp   open  msrpc           Microsoft Windows RPC
139/tcp   open  netbios-ssn     Microsoft Windows netbios-ssn
443/tcp   open  ssl/https       VMware Workstation SOAP API 14.1.1
| fingerprint-strings: 
|   FourOhFourRequest: 
|     HTTP/1.1 404 Not Found
|     Date: Tue, 19 Feb 2019 10:46:51 GMT
|     Connection: close
|     Content-Type: text/plain; charset=utf-8
|     X-Frame-Options: DENY
|     Content-Length: 0
|   GetRequest: 
|     HTTP/1.1 403 Forbidden
|     Date: Tue, 19 Feb 2019 10:46:51 GMT
|     Connection: close
|     Content-Type: text/plain; charset=utf-8
|     X-Frame-Options: DENY
|     Content-Length: 0
|   HTTPOptions: 
|     HTTP/1.1 501 Not Implemented
|     Date: Tue, 19 Feb 2019 10:46:51 GMT
|     Connection: close
|     Content-Type: text/plain; charset=utf-8
|     X-Frame-Options: DENY
|     Content-Length: 0
|   RTSPRequest: 
|     HTTP/1.1 400 Bad Request
|     Date: Tue, 19 Feb 2019 10:47:02 GMT
|     Connection: close
|     Content-Type: text/html
|     Content-Length: 50
|     <HTML><BODY><H1>400 Bad Request</H1></BODY></HTML>
|   SIPOptions: 
|     HTTP/1.1 400 Bad Request
|     Date: Tue, 19 Feb 2019 10:48:05 GMT
|     Connection: close
|     Content-Type: text/html
|     Content-Length: 50
|_    <HTML><BODY><H1>400 Bad Request</H1></BODY></HTML>
| vmware-version: 
|   Server version: VMware Workstation 14.1.1
|   Build: 7528167
|   Locale version: INTL  
|   OS type: win32-x86
|_  Product Line ID: ws
445/tcp   open  microsoft-ds    Microsoft Windows 7 - 10 microsoft-ds (workgroup: WORKGROUP)
902/tcp   open  ssl/vmware-auth VMware Authentication Daemon 1.10 (Uses VNC, SOAP)
912/tcp   open  vmware-auth     VMware Authentication Daemon 1.0 (Uses VNC, SOAP)
5357/tcp  open  http            Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
|_http-server-header: Microsoft-HTTPAPI/2.0
49152/tcp open  msrpc           Microsoft Windows RPC
49153/tcp open  msrpc           Microsoft Windows RPC
49154/tcp open  msrpc           Microsoft Windows RPC
49158/tcp open  msrpc           Microsoft Windows RPC
49159/tcp open  msrpc           Microsoft Windows RPC
49163/tcp open  msrpc           Microsoft Windows RPC
1 service unrecognized despite returning data. If you know the service/version, please submit the following fingerprint at https://nmap.org/cgi-bin/submit.cgi?new-service :
SF-Port22-TCP:V=7.70%I=7%D=2/19%Time=5C6BDE95%P=x86_64-pc-linux-gnu%r(NULL
SF:,34,"SSH-2\.0-OpenSSH_7\.1p1\x20Microsoft_Win32_port_with_VS\r\n");
MAC Address: 00:50:56:C0:00:02 (VMware)
Service Info: Host: H61; OS: Windows; CPE: cpe:/o:microsoft:windows, cpe:/o:vmware:Workstation:14.1.1

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 165.49 seconds
