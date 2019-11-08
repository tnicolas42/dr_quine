s = "def a(s): print(s %c (37, 10, 37, 37, 37, 37, 10))  # inside%cprint('s = %cc%cs%cc' %c (34, s, 34))%ca(s)  # outside"
def a(s): print(s % (37, 10, 37, 37, 37, 37, 10))  # inside
print('s = %c%s%c' % (34, s, 34))
a(s)  # outside
