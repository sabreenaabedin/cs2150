// in lab 9 testfile
#include <iostream>
using namespace std;
class Parent {
public:
  Parent(){ a = 7; }
  virtual int add(){ a = a + 1; }
 virtual int mult(){ a = a * 5; }
  int a;
};
class Middle {
public:
  Middle(){ b = 8; }
  virtual int add(){ b = b + 2; }
  virtual int mult(){ b = b * 3; }
 int b;
};

class Child: public Parent, public Middle {
public:
  Child(){ c = 9; }
  virtual int add(){ c = c + 3; }
 virtual int mult(){ c = c * 6; }
  int c;
};
int main(){
  int x;
  cout<< "enter 0 or 1" << endl;
  cin >> x;
  Parent * test;
  if (x == 0){test = new Parent();}
  else { test = new Child();}
  test->add();
  test-> mult();
  return 0;
}
