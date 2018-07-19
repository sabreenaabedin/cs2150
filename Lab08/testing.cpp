//Sabreena Abedin (sa7cx) 3/29/16 testing.cpp

using namespace std;
void methodbyvalue(int a, char b, int* c, float d);
void methodbyreference(int &a, char &b, int* &c, float &d);



main(){
 
  int a = 1;
  char b = 'b';
  int* c = &a;
  float d = 1.0;

  methodbyvalue(a, b, c, d);
  



  return 0;


}



void methodbyvalue(int a, char b, int* c, float d){



}

void methodbyreference(int &a, char &b, int* &c, float &d){



}

void arraybyvalue(){

}

void arraybyreference(){


}
