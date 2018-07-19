//Sabreena Abedin (sa7cx) 2/19/2016 bitCounter.cpp

#include <iostream>
#include <stdlib.h>

using namespace std;

int bitCounter(int n){
int answer = 0;

if(n == 1){
answer ++;

} else if (n % 2 ==1){
answer += bitCounter(n/2);
answer++;

} else {
answer+= bitCounter(n/2);
}

return answer;
}



int main(int argc, char *argv[]){
  int n = atoi(argv[1]);

cout<< bitCounter(n) <<endl;





  return 0;
}
