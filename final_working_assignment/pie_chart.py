#reads in first file
high = 0
med = 0
low = 0
none = 0
lables = 'highrisk', 'med risk', 'low risk','no risk'


colors = ['orangered', 'gold', 'yellowgreen','green']
import matplotlib.pyplot as plt
fig = plt.figure()

with open('exploits.txt', 'r') as VUNS_FOUND:
 
    
    if 'CVE2009-3103' in VUNS_FOUND.read():
      print('ooh senpai UwU')
      low = low + 0.5
      none = none + 1
    with open('ip.txt','r') as f:
	
     plt.title(f.read())
	  
	
	  

with open('exploits.txt', 'r') as VUNS_FOUND:      
    if 'CVE-2014-6271' in VUNS_FOUND.read(): 
    #et blue
      high = high + 1.5
      none = none + 0.5 #half a value to high? 
      print('Omae Wa Mou Shindeiru')
    with open('ip.txt','r') as f:
	
     plt.title(f.read())
    
with open('exploits.txt', 'r') as VUNS_FOUND:
    if 'MS07-029' in VUNS_FOUND.read():
      print('Enough with the Anime References')
      med = med + 1
      none = none + 0.5 
    with open('ip.txt','r') as f:
	
     plt.title(f.read())
with open('exploits.txt', 'r') as VUNS_FOUND:      
    if 'MS08-067' in VUNS_FOUND.read(): 
      print('Enough with the Anime References')
      # why_error(hosts)
      med = med + 1
      none = none + 0.5
      
      
    with open('ip.txt','r') as f:
	
     plt.title(f.read())  
      

with open('exploits.txt', 'r') as VUNS_FOUND:      
    if 'MS17-010' in VUNS_FOUND.read():
      print('Enough with the Anime References')

with open('exploits.txt', 'r') as VUNS_FOUND:      
    if 'WebExec' in VUNS_FOUND.read():
      print('I am found')
      med = med + 1

sizes = [high, med, low,none]
plt.pie(sizes, labels = lables, colors = colors,
autopct='%1.1f%%', shadow = True, startangle = 500)

plt.axis('equal')
plt.show()
