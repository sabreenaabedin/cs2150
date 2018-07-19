//testclass.h
#ifndef TESTCLASS_H
#define TESTCLASS_H

#include "subclass.h"
using namespace std;

class testclass {
public:
int a;
char b;
subclass c;
testclass(subclass sub);
int getint();
char getchar();
float getfloat();
friend class objects;
int f;

private:
  int d;
  float e;
  
};

#endif
