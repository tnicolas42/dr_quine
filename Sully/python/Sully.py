s = "import os%ci = %d%cd = int(not(__debug__))%cif i != 0:%c f = open(f'Sully_{i - d}.py', 'w+')%c def a(s): f.write(s %c (10, i - d, 10, 10, 10, 10, 37, 10, 37, 37, 37, 37, 37, 10, 10, 10, 10)) # jul%c f.write('s = %cc%cs%cc%cc' %c (34, s, 34, 10))%c a(s)%c f.close()%c os.system(f'python3 -O ./Sully_{i - d}.py')%c"
import os
i = 5
d = int(not(__debug__))
if i != 0:
 f = open(f'Sully_{i - d}.py', 'w+')
 def a(s): f.write(s % (10, i - d, 10, 10, 10, 10, 37, 10, 37, 37, 37, 37, 37, 10, 10, 10, 10)) # jul
 f.write('s = %c%s%c%c' % (34, s, 34, 10))
 a(s)
 f.close()
 os.system(f'python3 -O ./Sully_{i - d}.py')
