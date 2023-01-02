#include <stdio.h>
void main()
{
	FILE *fp;
	int i = 0;
	fp = fopen("average.txt", "w");
	for (i = 0; i <= 100000; i++)
	{
		fprintf(fp, "%d\n", rand()); // for average case
																 // fprintf(fp,"%d\n",i); // for best case
																 // fprintf(fp,"%d\n",100000-i); // for average case
	}
	fclose(fp);
}
