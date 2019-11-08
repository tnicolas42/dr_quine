#define s "#include <stdio.h>%c#include <fcntl.h>%c#include <unistd.h>%c#include <stdlib.h>%c#define i %c%u%c%c#define WRITE(fd) dprintf(fd, s, 10, 10, 10, 10, 34, atoi(i) - 1, 34, 10, 10, 34, 34, 34, 34, 34, 37, 37, 92, 34, 34, 34, 34, 34, 34, 34, 10, 10)%c#define MAIN int main() { int fd = open(%cSully_%ci%c.c%c, O_CREAT | O_RDWR, 0700); dprintf(fd, %c#define s %cc%%s%cc%cn%c, 34, s, 34); WRITE(fd); close(fd); atoi(i) && system(%cgcc Sully_%ci%c.c -o Sully_%ci%c && ./Sully_%ci); /* jul */ }%cMAIN%c"
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#define i "5"
#define WRITE(fd) dprintf(fd, s, 10, 10, 10, 10, 34, atoi(i) - 1, 34, 10, 10, 34, 34, 34, 34, 34, 37, 37, 92, 34, 34, 34, 34, 34, 34, 34, 10, 10)
#define MAIN int main() { int fd = open("Sully_"i".c", O_CREAT | O_RDWR, 0700); dprintf(fd, "#define s %c%s%c\n", 34, s, 34); WRITE(fd); close(fd); atoi(i) && system("gcc Sully_"i".c -o Sully_"i" && ./Sully_"i); /* jul */ }
MAIN
