# include<stdio.h>
void main(){
	printf("Enter the number of elements : ");
	int n; 
	scanf("%d",&n);
	int arr[n];
	if(n == 1){
		printf("0");	
	}
	else if(n == 2){
		printf("0,1");
	}
	else if(n > 2){
		arr[0] = 0;
		arr[1] = 1;
		int i;
		for(i = 2;i<n;i++){
			arr[i] = arr[i-1] + arr[i-2];
		}
		printf("\n");
		for(i=0;i<n-1;i++){
			printf("%d,",arr[i]);
		}
		printf("%d",arr[i]);
	}
	
}
