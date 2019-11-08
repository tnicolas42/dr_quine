char *s = "#include <stdio.h>%c#include <fcntl.h>%c#include <unistd.h>%cint fd;%cvoid a(char *s) { dprintf(fd, s, 10, 10, 10, 10, 10, 10, 10, 9, 34, 34, 10, 9, 34, 37, 37, 92, 34, 10, 9, 10, 9, 10, 10, 10); } // a%cint main()%c{%c%cfd = open(%cGrace_kid.c%c, O_CREAT | O_RDWR, 0700);%c%cdprintf(fd, %cchar *s = %cc%%s%cc;%cn%c, 34, s, 34); a(s);  // inside the function%c%cclose(fd);%c%creturn 0;%c}%c";
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
int fd;
void a(char *s) { dprintf(fd, s, 10, 10, 10, 10, 10, 10, 10, 9, 34, 34, 10, 9, 34, 37, 37, 92, 34, 10, 9, 10, 9, 10, 10, 10); } // a
int main()
{
	fd = open("Grace_kid.c", O_CREAT | O_RDWR, 0700);
	dprintf(fd, "char *s = %c%s%c;\n", 34, s, 34); a(s);  // inside the function
	close(fd);
	return 0;
}
