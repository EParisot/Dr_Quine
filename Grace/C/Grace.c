#include <stdio.h>

#define MAIN int main() {func();return (0);}
#define CODE char *s = "#include <stdio.h>%2$c%2$c#define MAIN int main() {func();return (0);}%2$c#define CODE char *s = %3$c%4$s%3$c;%2$c#define WRITE FILE *fp;fp = fopen(%3$cGrace_kid.c%3$c, %3$cw%3$c);fprintf(fp, s, 9, 10, 34, s);fclose(fp);%2$c%2$c/*%2$c%1$ccom%2$c*/%2$c%2$cvoid func() {CODE WRITE}%2$c%2$cMAIN%2$c";
#define WRITE FILE *fp;fp = fopen("Grace_kid.c", "w");fprintf(fp, s, 9, 10, 34, s);fclose(fp);

/*
	com
*/

void func() {CODE WRITE}

MAIN
