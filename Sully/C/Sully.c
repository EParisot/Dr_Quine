#include <stdio.h>
#include <stdlib.h>

#define CODE char *s = "#include <stdio.h>%c#include <stdlib.h>%c%c#define CODE char *s = %c%s%c;%c%c/*%c%ccom%c*/%c%cint main() {%c%cCODE%c%cint i = %d;%c%cchar f[10];%c%cchar e[8];%c%cchar c[28];%c%cchar o[10];%c%cFILE *fp;%c%csprintf(f, %cSully_%%d.c%c, --i);%c%csprintf(e, %cSully_%%d%c, i);%c%cfp = fopen(f, %cw%c);%c%cfprintf(fp, s, 10, 10, 10, 34, s, 34, 10, 10, 10, 9, 10, 10, 10, 10, 9, 10, 9, i, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 34, 34, 10, 9, 34, 34, 10, 9, 34, 34, 10, 9, 10, 9, 10, 9, 34, 34, 10, 9, 10, 9, 34, 34, 10, 9, 10, 9, 10, 10);%c%cfclose(fp);%c%csprintf(c, %cgcc %%s -o %%s%c, f, e);%c%csystem(c);%c%csprintf(o, %c./%%s%c, e);%c%cif (i) system(o);%c%creturn (0);%c}%c";

/*
	com
*/

int main() {
	CODE
	int i = 5;
	char f[10];
	char e[8];
	char c[28];
	char o[10];
	FILE *fp;
	sprintf(f, "Sully_%d.c", --i);
	sprintf(e, "Sully_%d", i);
	fp = fopen(f, "w");
	fprintf(fp, s, 10, 10, 10, 34, s, 34, 10, 10, 10, 9, 10, 10, 10, 10, 9, 10, 9, i, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 34, 34, 10, 9, 34, 34, 10, 9, 34, 34, 10, 9, 10, 9, 10, 9, 34, 34, 10, 9, 10, 9, 34, 34, 10, 9, 10, 9, 10, 10);
	fclose(fp);
	sprintf(c, "gcc %s -o %s", f, e);
	system(c);
	sprintf(o, "./%s", e);
	if (i) system(o);
	return (0);
}
