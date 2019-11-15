s = "import os%ci = %d%cif i != -1:%c f = open(f'Sully_{i}.py', 'w+')%c def a(s): f.write(s %c (10, i - 1, 10, 10, 10, 37, 10, 37, 37, 37, 37, 37, 10, 10, 10, 10)) # jul%c f.write('s = %cc%cs%cc%cc' %c (34, s, 34, 10))%c a(s)%c f.close()%c os.system(f'python3 ./Sully_{i}.py')%c"
import os
i = 5
if i != -1:
 f = open(f'Sully_{i}.py', 'w+')
 def a(s): f.write(s % (10, i - 1, 10, 10, 10, 37, 10, 37, 37, 37, 37, 37, 10, 10, 10, 10)) # jul
 f.write('s = %c%s%c%c' % (34, s, 34, 10))
 a(s)
 f.close()
 os.system(f'python3 ./Sully_{i}.py')
