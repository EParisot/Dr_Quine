#include <stdio.h>

#define MAIN int main() {func();return (0);}
#define CODE char *s = "#include <stdio.h>%c%c#define MAIN int main() {func();return (0);}%c#define CODE char *s = %c%s%c;%c#define WRITE FILE *fp;fp = fopen(%cGrace_kid.c%c, %cw%c);fprintf(fp, s, 10, 10, 10, 34, s, 34, 10, 34, 34, 34, 34, 10, 10, 10, 9, 10, 10, 10, 10, 10, 10);fclose(fp);%c%c/*%c%ccom%c*/%c%cvoid func() {CODE WRITE}%c%cMAIN%c";
#define WRITE FILE *fp;fp = fopen("Grace_kid.c", "w");fprintf(fp, s, 10, 10, 10, 34, s, 34, 10, 34, 34, 34, 34, 10, 10, 10, 9, 10, 10, 10, 10, 10, 10);fclose(fp);

/*
	com
*/

void func() {CODE WRITE}

MAIN
