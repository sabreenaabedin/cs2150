//Sabreena Abedin (sa7cx) 3/15/16 hashTable.h
#ifndef HASHTABLE_H
#define HASHTABLE_H


#include <iostream>
#include <vector>
#include <list>
#include <string>
#include <math.h>




using namespace std;

    class hashTable{

    public:
      
      
      vector<list<string> > table;
      unsigned int hash(string s);
      void insert(string s);
      bool find(string s);
      hashTable(unsigned int dictionary_size);
      bool checkprime(unsigned int p);
      int getNextPrime (unsigned int n);
      
      
    private:


    };
#endif
