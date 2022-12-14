struct node {
	int data;
	struct node *link;
};
void printList(struct node *temp){
	while(temp != '\0'){
		printf("data%d = %d \n",temp->data,temp->data);
		temp = temp->link;
	}
}
void main(){
	struct node *first,*second,*third;
	first = (struct node *)malloc(sizeof(struct node));
	second = (struct node *)malloc(sizeof(struct node));
	third = (struct node *)malloc(sizeof(struct node));
	first->data = 1;
	first->link = second;
	second->data = 2;
	second->link = third;
	third->data = 3;
	third->link = '\0';
	printList(first);
	
}
