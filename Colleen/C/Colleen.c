#include <stdio.h>

/*
	com1
*/

void func(char *s) {printf(s, 10, 10, 10, 9, 10, 10, 10, 10, 10, 10, 10, 9, 10, 9, 9, 10, 9, 10, 9, 34, s, 34, 10, 9, 10, 9, 10, 10);}

int main()
{
	/*
		com2
	*/
	char *s = "#include <stdio.h>%c%c/*%c%ccom1%c*/%c%cvoid func(char *s) {printf(s, 10, 10, 10, 9, 10, 10, 10, 10, 10, 10, 10, 9, 10, 9, 9, 10, 9, 10, 9, 34, s, 34, 10, 9, 10, 9, 10, 10);}%c%cint main()%c{%c%c/*%c%c%ccom2%c%c*/%c%cchar *s = %c%s%c;%c%cfunc(s);%c%creturn (0);%c}%c";
	func(s);
	return (0);
}
