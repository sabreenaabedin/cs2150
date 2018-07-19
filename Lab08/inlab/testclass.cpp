//testclass.cpp

#include "testclass.h"

//Default Constructor
testclass::testclass(subclass sub) {
    
  a = 0;
  b = 'b';
  c = sub;
  d = 3;
  e = 1.0;
    
    
    
}

int testclass::getint(){
 return this.a; 
}

