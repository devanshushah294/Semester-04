#include<stdio.h>
void main(){
	FILE *fp;
	int i =0;
	fp=fopen("average.txt","w");
	for(i=100000;i>0;i--){
		fprintf(fp,"%d\n",rand());
	}
	fclose(fp);
}
