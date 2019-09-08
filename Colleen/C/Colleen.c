#include <stdio.h>

/*
	com1
*/

void func(char *s) {printf(s, 9, 10, 34, s);}

int main()
{
	/*
		com2
	*/
	char *s = "#include <stdio.h>%2$c%2$c/*%2$c%1$ccom1%2$c*/%2$c%2$cvoid func(char *s) {printf(s, 9, 10, 34, s);}%2$c%2$cint main()%2$c{%2$c%1$c/*%2$c%1$c%1$ccom2%2$c%1$c*/%2$c%1$cchar *s = %3$c%4$s%3$c;%2$c%1$cfunc(s);%2$c%1$creturn (0);%2$c}%2$c";
	func(s);
	return (0);
}
