#include<stdio.h>
void main(){
	int n=10;
	int a[n],i,j,temp,case,t;
		
	printf("please enter the case \n 1:best \n 2:worst \n 3:avrage");
	printf("enter no. of elements:");
	scanf("%d",&t);
	scanf("%d",&case);
	sacnf("%d");
	FILE *fp;
	switch case:
		case:1{
					fp=fopen("data.txt","w");
				for(i=0;i<10000;i++){
					fprintf(fp, "%d\n", i);
				}
					break;
		}
		
		case:2{
					fp1=fopen("data_worst.txt","w");
				for(i=10000;i>0;i--){
					fprintf(fp1, "%d\n", i);
				}
					break;
		}
		case:3{
					fp2=fopen("data_avg.txt","w");
				for(i=10000;i>0;i--){
					fprintf(fp2, "%d\n", rand());
				}
					break;
		}
	
	for(i=0;i<n;i++){
		for(j=0;j<n;j++){
			if(a[j]>a[j+1]){
				temp=a[j];
				a[j]=a[j+1];
				a[j+1]=temp;
			}
		}
	}
	
	for(i=0;i<n;i++){
		printf("%d\n",a[i]);
	}
}
