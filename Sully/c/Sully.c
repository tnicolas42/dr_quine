char *s = "#include <stdio.h>%1$c#include <fcntl.h>%1$c#include <unistd.h>%1$c#include <stdlib.h>%1$cint i = %5$d;%1$c#ifndef DECREMENT%1$c#define DECREMENT 1%1$c#endif%1$cchar jul[100]; char *JULPRINTF(char *s2,int i) {sprintf(jul,s2,i - DECREMENT);return jul;}%1$c#define WRITE(fd) dprintf(fd, s, 10, 34, 37, 92, i - DECREMENT)%1$c#define MAIN int main() { if (i != 0) { int fd = open(JULPRINTF(%2$cSully_%3$c1$d.c%2$c, i), O_CREAT | O_RDWR, 0700); dprintf(fd, %2$cchar *s = %3$cc%3$cs%3$cc;%4$cn%2$c, 34, s, 34); WRITE(fd); close(fd); system(JULPRINTF(%2$cgcc Sully_%3$c1$d.c -o Sully_%3$c1$d && ./Sully_%3$c1$d%2$c, i)); }}%1$cMAIN%1$c";
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
int i = 5;
#ifndef DECREMENT
#define DECREMENT 1
#endif
char jul[100]; char *JULPRINTF(char *s2,int i) {sprintf(jul,s2,i - DECREMENT);return jul;}
#define WRITE(fd) dprintf(fd, s, 10, 34, 37, 92, i - DECREMENT)
#define MAIN int main() { if (i != 0) { int fd = open(JULPRINTF("Sully_%1$d.c", i), O_CREAT | O_RDWR, 0700); dprintf(fd, "char *s = %c%s%c;\n", 34, s, 34); WRITE(fd); close(fd); system(JULPRINTF("gcc Sully_%1$d.c -o Sully_%1$d && ./Sully_%1$d", i)); }}
MAIN
