#include <stdio.h>
void main(){
	int a[10000],i,j;
	FILE *fp;
	fp=fopen("data.txt","w");
		for(i=0;i<10000;i++){
			fprintf(fp, "%d\n", i);
		}
		
		FILE *fp1;
	fp1=fopen("data_worst.txt","w");
		for(i=10000;i>0;i--){
			fprintf(fp1, "%d\n", i);
		}
		
		FILE *fp2;
	fp2=fopen("data_avg.txt","w");
		for(i=10000;i>0;i--){
			fprintf(fp2, "%d\n", rand());
		}
}
