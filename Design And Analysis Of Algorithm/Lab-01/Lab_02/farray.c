#include <stdio.h>
#include <stdlib.h>

void main()
{
   int num;
   printf("Enter num: ");
   scanf("%d",&num);
   FILE *fptr;

   // use appropriate location if you are using MacOS or Linux
   fptr = fopen("data.txt","w");

   int i;
   for(i = 0; i<num; i++){
		fprintf(fptr,"%d",i);
   }
   fclose(fptr);

   
}
