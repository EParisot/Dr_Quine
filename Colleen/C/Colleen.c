#include <stdio.h>

/*
    com1
*/

void func(char *s) {printf(s, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10, 10);}

int main()
{
    /*
        com2
    */
    char *s = "#include <stdio.h>%c%c/*%c    com1%c*/%c%cvoid func(char *s) {printf(s, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 34, s, 34, 10, 10, 10, 10);}%c%cint main()%c{%c    /*%c        com2%c    */%c    char *s = %c%s%c;%c    func(s);%c    return (0);%c}%c";
    func(s);
    return (0);
}
