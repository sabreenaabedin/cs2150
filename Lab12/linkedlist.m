//Sabreena Abedin (sa7cx) 5/2/2016 linkedlist.m
#import <Foundation/NSObject.h>

 @interface ListNode : NSObject
 {
 @public
    int datum;
    ListNode* prev; 
 }
 - (id) datum: (int) datum_value; 		//set
 - (int) datum;					//get
 - (id) prev: (ListNode *) prev_value; 		//set
 - (ListNode *) prev;				//get
 @ end
 
 @implementation ListNode
  - (id) datum: (int) datum_value
  {
  datum = datum_value;
  return self;
  }
 - (int) datum 
  {
   return datum;
  }
 - (id) prev: (ListNode *) prev_value
  {
    prev = prev_value;
    return self;
  }
 - (ListNode *) prev {
   return prev;
  }
 @end

int main(void){
  //read in values
  int values;
  printf("Enter how many values to input:  \n");
  scanf("%d", &values);

  ListNode *head = [ListNode new];
  ListNode *temp = [ListNode new];  
  temp = head;
   
   
   int i;
   for (i = 1; i < values + 1; i++){
   int x;
   printf("\n Enter value %d: ", i); 
   scanf("%d", &x);
   
   // create item
   ListNode *item;
   item = [ListNode new];
   
   // instantiate item
    item->datum = x;
    item->prev = temp;
    temp = item;
   }
   
   // iterate through list 
    printf("\nList printed in reverse order: \n");
    ListNode * itr = temp;
    while(itr->prev != head->prev){
      ListNode * a;
      printf("%d\n", (itr->datum));
      a = itr->prev;
      [itr release];
      itr = a;
    }

  return 0;
}