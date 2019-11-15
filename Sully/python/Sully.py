s = "import os%ci = %d%cf = open(f'Sully_{i - 1}.py', 'w+')%cdef a(s): f.write(s %c (10, i - 1, 10, 10, 37, 10, 37, 37, 37, 37, 37, 10, 10, 10, 10)) # jul%cf.write('s = %cc%cs%cc%cc' %c (34, s, 34, 10))%ca(s)%cf.close()%cos.system(f'python3 ./Sully_{i - 1}.py') if i - 1 else True%c"
import os
i = 5
f = open(f'Sully_{i - 1}.py', 'w+')
def a(s): f.write(s % (10, i - 1, 10, 10, 37, 10, 37, 37, 37, 37, 37, 10, 10, 10, 10)) # jul
f.write('s = %c%s%c%c' % (34, s, 34, 10))
a(s)
f.close()
os.system(f'python3 ./Sully_{i - 1}.py') if i - 1 else True
