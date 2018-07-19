//Sabreena Abedin (sa7cx) 12/16/2016 prelab4.cpp
#include <iostream>
#include <climits>
#include <cmath>
using namespace std;

void sizeofTest(){

  int Int;
  char Char;
  double Double;
  bool Boolean;
       cout<< "size of int: " << sizeof(Int) << endl;
       cout<< "size of unsigned int: " << sizeof(unsigned int) << endl;
       cout<< "size of float: " << sizeof(float) << endl;
       cout<< "size of double: " << sizeof(Double) << endl;
       cout<< "size of char: " << sizeof(Char) << endl;
       cout<< "size of boolean: " << sizeof(Boolean) << endl;
       cout<< "size of int*: " << sizeof(&Int) << endl;
       cout<< "size of char*: " << sizeof(&Char) << endl; 
       cout<< "size of double*: " << sizeof(&Double) << endl;
}

void outputBinary(unsigned int a){
  int b = a;
 string binary = ""; 
  for(int i = 31; i >= 0; i--){
    if( (i+1) % 4 == 0) { //add spacing
      binary += " ";
    }
    if(pow(2,i)<= b){
      binary += "1";
      b=  b - pow(2,i);
    } else {
      binary += "0";

    }
  }
 
  cout<< binary << endl;
}

void overflow(){
   unsigned int a = UINT_MAX;
 unsigned int b = a + 1;
  cout << "max = " << a << endl;
 cout << "max + 1 = " << b << endl;
 cout << "When adding 1 to the max, the program doesn't halt but returns zero and loops back around. If more numbers were added, they would continue up towards the maximum value, starting at 0." << endl;
}

int main(){
  int x = 0;
 cout << "Input integer: x= ";
  cin >> x;
  cout << "Begin sizeofTest():" << endl;
  sizeofTest();
  cout << "Begin outputBinary():" << endl;
  outputBinary(x);
  cout << "Begin overflow():" << endl;
  overflow();

  return 0;
}
