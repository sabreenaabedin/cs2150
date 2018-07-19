//Sabreena Abedin (sa7cx) 3/29/16 testing.cpp

#include "TreeNode.h"
using namespace std;

void methodbyvalue(int a, char b, int* c, float d, TreeNode node){
}
void methodbyreference(int &a, char &b, int* &c, float &d, TreeNode &node){
}
void arraybyvalue(int arr[3]){
}
void arraybyreference(int (&arr)[3]){
}
main(){
  int a = 6;
  char b = 'b';
  int* c = &a;
  float d = 1.0;
  TreeNode n;
  int arr [3] = {0, 1, 2};
  int e = arr[0]; //access array element 
  methodbyvalue(a, b, c, d, n);
  methodbyreference(a, b, c, d, n);
  arraybyvalue(arr);
  arraybyreference(arr);
  return 0;
}
