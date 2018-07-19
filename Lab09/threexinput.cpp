//Sabreena Abedin (sa7cx) 4/12/16 threexinput.cpp

#include <iostream>
#include "timer.h"

using namespace std;

extern "C" int conjecture (int);

int main(){
  
  int x, n, answer;
  double average = 0;
  
  cout << "Enter x: " << endl;
  cin >> x; 
  cout << "Enter number of runs: " << endl;
  cin >> n;
  
  timer t; 
  t.start();
  for (int i = 0; i < n-1; i ++){
  answer = conjecture(x);
  }
  t.stop();
  
  average = t.getTime() / n;
  cout << "Steps taken: " << answer << endl;
  cout << "Time taken: " << average << endl;
  
 return 0; 
}