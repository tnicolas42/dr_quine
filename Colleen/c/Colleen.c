char *s = "#include <stdio.h>%cvoid a(char *s) { printf(s, 10, 10, 10, 10, 9, 34, 37, 37, 92, 34, 10, 9, 10, 10, 10); } // a%cint main()%c{%c%cprintf(%cchar *s = %cc%%s%cc;%cn%c, 34, s, 34); a(s);  // inside the function%c%creturn 0;%c}%c";
#include <stdio.h>
void a(char *s) { printf(s, 10, 10, 10, 10, 9, 34, 37, 37, 92, 34, 10, 9, 10, 10, 10); } // a
int main()
{
	printf("char *s = %c%s%c;\n", 34, s, 34); a(s);  // inside the function
	return 0;
}
