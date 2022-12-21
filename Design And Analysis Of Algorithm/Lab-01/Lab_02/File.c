#include <stdio.h>
void main(){
	FILE *fp;
	int x[100], i=0;
	fp = fopen("data.txt","r");
	while(fscanf(fp,"%d",&x[i])!=EOF){
		printf("%d\n",x[i]);
		i++;
	}
	fclose(fp);
}
