//testing2.cpp

#include "TreeNode.h"
using namespace std;

int arraybyvalue(int arr[3]){
  int e = arr[2];
  return arr[1];
}
int arraybyreference(int (&arr)[3]){
  return arr[1];
}
int byref(int &a){
  return 0;
}
int bypoint(int*a){
  return 0;
}

void intbyval(int a){}
void charbyval(char a){}
void floatbyval(float a){}
void nodebyval(TreeNode a){}

void intbyref(int &a){}
void charbyref (char &a){}
void floatbyref(float &a){}
void nodebyref(TreeNode &a){}

main(){
  TreeNode node;
  nodebyval(node);
  nodebyref(node);


/**int a = 2;
  char b = 'b';
  float c = 1.0;
  intbyval(a);
  intbyref(a);
  charbyval(b);
  charbyref(b);
  floatbyval(c);
  floatbyref(c);
  int*b = &a;
  byref(a);
  bypoint(b);
  int arr [3] = {0, 1, 2};
  arraybyvalue(arr);
  arraybyreference(arr);**/
  return 0;
}
