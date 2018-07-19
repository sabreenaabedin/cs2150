/*Sabreena Abedin (sa7cx) 4/15/16 linkedlist.c */

#include <stdio.h>
#include <stdlib.h>

int main(){
  
  int values;
  printf("Enter how many values to input:  \n");
  scanf("%d", &values);
  
   struct list_item {   
     struct list_item *prev;
     int datum;
   };
   
  struct list_item *temp;  
  struct list_item *head = malloc(sizeof(struct list_item));
  temp = head;
   
   int i;
   for (i = 1; i < values + 1; i++){
   int x;
   printf("\n Enter value %d: ", i); 
   scanf("%d", &x);
   
   /* create item */
    struct list_item *item;
   item = malloc(sizeof (struct list_item));
   
   /* instantiate item */
    item->datum = x;
    item->prev = temp;
    temp = item;
   }
    /* iterate through list  */
    printf("\nList printed in reverse order: \n");
  struct list_item* itr = temp;
  while(itr->prev != head->prev){
    struct list_item * a;
    printf("%d\n", (itr->datum));
    a = itr->prev;
    free(itr);
    itr = a;
  }
  
  
  return 0;
} 