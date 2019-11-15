#define s "#include <stdio.h>%c#include <fcntl.h>%c#include <unistd.h>%c#define WRITE(fd) dprintf(fd, s, 10, 10, 10, 10, 34, 34, 34, 37, 37, 92, 34, 92, 10, 10, 10, 10, 10)%c#define MAIN int main() { int fd = open(%cGrace_kid.c%c, O_CREAT | O_RDWR, 0700); dprintf(fd, %c#define s %cc%%s%cc%cn%c, 34, s, 34); WRITE(fd); close(fd); %c%c/*%c  jul%c*/ }%cMAIN%c"
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#define WRITE(fd) dprintf(fd, s, 10, 10, 10, 10, 34, 34, 34, 37, 37, 92, 34, 92, 10, 10, 10, 10, 10)
#define MAIN int main() { int fd = open("Grace_kid.c", O_CREAT | O_RDWR, 0700); dprintf(fd, "#define s %c%s%c\n", 34, s, 34); WRITE(fd); close(fd); \
/*
  jul
*/ }
MAIN
