#define s "#include <stdio.h>%1$c#include <fcntl.h>%1$c#include <unistd.h>%1$c#include <stdlib.h>%1$cint i = %5$d;%1$cchar jul[100]; char *JULPRINTF(char *s2,int i) {sprintf(jul,s2,i);return jul;}%1$c#define WRITE(fd) dprintf(fd, s, 10, 34, 37, 92, i - 1)%1$c#define MAIN int main() { int fd = open(JULPRINTF(%2$cSully_%3$c1$d.c%2$c, i - 1), O_CREAT | O_RDWR, 0700); dprintf(fd, %2$c#define s %3$cc%3$cs%3$cc%4$cn%2$c, 34, s, 34); WRITE(fd); close(fd); i-1 && system(JULPRINTF(%2$cgcc Sully_%3$c1$d.c -o Sully_%3$c1$d && ./Sully_%3$c1$d%2$c, i - 1)); }%1$cMAIN%1$c"
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
int i = 5;
char jul[100]; char *JULPRINTF(char *s2,int i) {sprintf(jul,s2,i);return jul;}
#define WRITE(fd) dprintf(fd, s, 10, 34, 37, 92, i - 1)
#define MAIN int main() { int fd = open(JULPRINTF("Sully_%1$d.c", i - 1), O_CREAT | O_RDWR, 0700); dprintf(fd, "#define s %c%s%c\n", 34, s, 34); WRITE(fd); close(fd); i-1 && system(JULPRINTF("gcc Sully_%1$d.c -o Sully_%1$d && ./Sully_%1$d", i - 1)); }
MAIN
