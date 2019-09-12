#include <stdio.h>
#include <stdlib.h>

#define CODE char *s = "#include <stdio.h>%2$c#include <stdlib.h>%2$c%2$c#define CODE char *s = %3$c%4$s%3$c;%2$c%2$c/*%2$c%1$ccom%2$c*/%2$c%2$cint main() {%2$c%1$cCODE%2$c%1$cint i = %5$d;%2$c%1$cchar f[100];%2$c%1$cchar e[100];%2$c%1$cchar c[100];%2$c%1$cchar o[100];%2$c%1$cFILE *fp;%2$c%1$csprintf(f, %3$cSully_%%d.c%3$c, i);%2$c%1$csprintf(e, %3$cSully_%%d%3$c, i);%2$c%1$cfp = fopen(f, %3$cw%3$c);%2$c%1$cfprintf(fp, s, 9, 10, 34, s, i-1);%2$c%1$cfclose(fp);%2$c%1$csprintf(c, %3$cgcc -Wall -Wextra -Werror %%s -o %%s%3$c, f, e);%2$c%1$csystem(c);%2$c%1$csprintf(o, %3$c./%%s%3$c, e);%2$c%1$cif (i > 0) system(o);%2$c%1$creturn (0);%2$c}%2$c";

/*
	com
*/

int main() {
	CODE
	int i = 5;
	char f[100];
	char e[100];
	char c[100];
	char o[100];
	FILE *fp;
	sprintf(f, "Sully_%d.c", i);
	sprintf(e, "Sully_%d", i);
	fp = fopen(f, "w");
	fprintf(fp, s, 9, 10, 34, s, i-1);
	fclose(fp);
	sprintf(c, "gcc -Wall -Wextra -Werror %s -o %s", f, e);
	system(c);
	sprintf(o, "./%s", e);
	if (i > 0) system(o);
	return (0);
}
