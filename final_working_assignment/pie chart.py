#reads in first file
high = 0
med = 0
low = 0
lables = 'highrisk', 'med risk', 'low risk'

colors = ['orangered', 'gold', 'yellowgreen']
import matplotlib.pyplot as plt


with open('VUNS_FOUND.txt', 'r') as VUNS_FOUND:
  
    
    if 'CVE2009-3103' in VUNS_FOUND.read():
      print('ooh senpai UwU')
      low = low + 1

with open('VUNS_FOUND.txt', 'r') as VUNS_FOUND:      
    if 'CVE-2014-6271' in VUNS_FOUND.read(): 
    #et blue
      high = high + 1
      print('Omae Wa Mou Shindeiru')

    
with open('VUNS_FOUND.txt', 'r') as VUNS_FOUND:
    if 'MS07-029' in VUNS_FOUND.read():
      print('Enough with the Anime References')
      med = med + 1

with open('VUNS_FOUND.txt', 'r') as VUNS_FOUND:      
    if 'MS08-067' in VUNS_FOUND.read(): 
      print('Enough with the Anime References')
      # why_error(hosts)
      med = med + 1
      
      

with open('VUNS_FOUND.txt', 'r') as VUNS_FOUND:      
    if 'MS17-010' in VUNS_FOUND.read():
      print('Enough with the Anime References')

with open('VUNS_FOUND.txt', 'r') as VUNS_FOUND:      
    if 'WebExec' in VUNS_FOUND.read():
      print('I am found')
      med = med + 1

sizes = [high, med, low]
plt.pie(sizes, labels = lables, colors = colors,
autopct='%1.1f%%', shadow = True, startangle = 140)

plt.axis('equal')
plt.show()

