//Sabreena Abedin (sa7cx) 3/29/16 mathfun.cpp

#include <iostream>
#include <time.h>
#include <cstdlib>
//#include "mathlib.s"

using namespace std;

extern "C" int product (int, int);
extern "C" int power (int, int);



int  main () {
    int  n, m, prod, pow;
    cout << "Please enter the first integer:  ";
    cin >> n;
    cout << "Please enter the second integer:  ";
    cin >> m;
    
 
    //test product
    prod = product(n,m);
    cout<< "The product of " << n << " and " << m << " is " << prod << endl;
    
    //test power
    pow = power(n,m);
    cout<< "The result of " << n << " to the " << m << " is " << pow << endl;
    
 
    
    return 0;
}
