s = "f = open('Grace_kid.py', 'w+')%cdef a(s): f.write(s %c (10, 37, 10, 37, 37, 37, 37, 37, 10, 10, 10)) # jul%cf.write('s = %cc%cs%cc%cc' %c (34, s, 34, 10))%ca(s)%cf.close()%c"
f = open('Grace_kid.py', 'w+')
def a(s): f.write(s % (10, 37, 10, 37, 37, 37, 37, 37, 10, 10, 10)) # jul
f.write('s = %c%s%c%c' % (34, s, 34, 10))
a(s)
f.close()
