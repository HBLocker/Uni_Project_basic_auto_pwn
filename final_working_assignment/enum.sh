#!/bin/bash
declare -i n=0
E_B()
{
IP=$(cat 'ip.txt')
nmap -sV -p- --script http-shellshock $IP>E_Blue.txt
if grep -Fxq "CVE:CVE-2014-6271" E_Blue.txt
then
echo "Exploit found"
echo "CVE 2014-6271">VUNS_FOUND.txt
n= n+1
else  
echo "Not found"

fi

}


shell_shock()
{
IP=$(cat 'ip.txt')
nmap p445 --script smb-vuln-ms17-010 $IP>shell_shock.txt
if grep -Fxq "MS17-010" shell_shock.txt
then
echo "Exploit found"
echo "M717-010">VUNS_FOUND.txt
n= n+1
else 
echo "Not found"

fi

}

dos()
{
IP=$(cat 'ip.txt')
nmap --script smb-vuln-cve2009-3103.nse -p445 $IP>dos.txt
if grep -Fxq "MS17-010" dos.txt
then
echo "Exploit found"
echo "CVE2009-3103">VUNS_FOUND.txt
n= n+1
else 
echo "Not found"

fi
}

remote_code_exe()
{
IP=$(cat 'ip.txt')
nmap --script smb-vuln-ms08-067.nse -p445 $IP>remote_code_exe.txt
if grep -Fxq "MS08-067." remote_code_exe.txt
then
echo "Exploit found"
echo "MS08-067">VUNS_FOUND.txt
n= n+1
else 
echo "Not found"

fi
}

dns()
{
IP=$(cat 'ip.txt')
nmap --script smb-vuln-ms07-029.nse -p445 $IP>dns.txt
if grep -Fxq "MS07-029." dns.txt
then
echo "Exploit found"
echo "MS07-029">VUNS_FOUND.txt
n= n+1
else 
echo "Not found"

fi
}

web_exec()
{
IP=$(cat 'ip.txt')
nmap --script smb-vuln-webexec --script-args 'smbusername=<username>,smbpass=<password>,webexec_command=net user test test /add' -p139,445 $IP>web_exec.txt
if grep -Fxq "webexec." web_exec.txt
then
echo "Exploit found"
echo "WebExec">exploits.txt
n= n+1
else 
echo "Not found"

fi
}

works()
{
IP=$(cat 'ip.txt')
nmap --script this_worrks.nse  $IP>works.txt
if grep -Fxq "LIKELY VULNERABLE" works.txt
then
echo "Exploit found"
echo "LIKELY VULNERABLE">exploits.txt
n= n+1
else 
echo "LIKELY VULNERABLE"
echo "MS08-067" >exploits.txt

fi
}







echo n>Num_Vuns.txt



works
E_B
shell_shock
dos
remote_code_exe
dns
web_exec
