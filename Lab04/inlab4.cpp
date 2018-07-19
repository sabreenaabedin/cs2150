//Sabreena Abedin (sa7cx) 2/16/2016 inlab4.cpp

#include <iostream>
using namespace std;


int main(){

  bool Bool=0;
  char Char= 'a';
  int Int= 0;
  double Double=0.0;
  int* Ipointer = &Int;
  //break here 14

  cout<< "bool: " << Bool << endl;
  cout<< "char: " << Char << endl;
  cout<<"Int: " <<Int << endl;
  cout<< "Double: " << Double <<endl;
  cout<< "Int Pointer: " << Ipointer<< endl;


  //Primitive Arrays

  int IntArray[10]= {1,2,3,4,5,6,7,8,9,0};
  // char CharArray[10]= "abcdefghi";
  char CharArray[10]= {'a','b','c', 'd', 'e','f','g','h','i'};

  int IntArray2D[6][5];
  for (int i = 0; i < 6; i++){
    for( int j=0; i<5; i++){
	IntArray2D[i][j]= i+i;
      }}

  char CharArray2D[6][5];
 for (int i = 0; i < 6; i++){
   for( int j=0; i<5; i++){
	CharArray2D[i][j]= i+j;
      }}

 cout<< "int array 1: " << IntArray << endl; 
 cout<< "char array 1: " << CharArray << endl;
 cout<< "int array 2: " << IntArray2D << endl;
 cout<< "char array 2: " << CharArray2D << endl;

  //break here 36


  return 0;
}
