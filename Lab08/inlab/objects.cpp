//objects.cpp

#include <iostream>
#include "testclass.h"
using namespace std;

void marker();

int main(){
  
  subclass s;
  testclass* tc = new testclass(s);
  testclass tc2 = testclass(s);

  // marker();
  int i = tc->a;
  char b = tc->b;
  subclass sub = tc->c;

  //  marker();
  int f = tc->getint();
  char g = tc->getchar();
  
  marker();
  int k = tc2.getint();

  return 0;
}
