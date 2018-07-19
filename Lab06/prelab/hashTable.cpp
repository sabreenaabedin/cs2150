//Sabreena Abedin (sa7cx) 3/18/16 hashTable.cpp

#include "hashTable.h"
int table_size = 0;
  
  hashTable:: hashTable(unsigned int dictionary_size){
    //  int hashsize= getNextPrime(2*dictionary_size);
    int hashsize= dictionary_size;
    table.resize(hashsize);
      table_size = hashsize;   
      
  }
  
  
unsigned int hashTable:: hash(string a){
  string str = a.c_str();
  unsigned int ans = 0;
  for( int i = 0; i < str.length(); i++){
    ans += a[i]*i*(67^i);
  }
    return (ans % table_size);
  
}



void hashTable:: insert(string s){
    unsigned int pos = hash(s);
  
    table.at(pos).push_back(s);

}

bool hashTable::find(string s) {
 unsigned int pos = hash(s);
 
  list<string> l = table.at(pos);

  for(list<string>::iterator it= l.begin(); it !=l.end(); it++){
    if(s == *it)
     return true;
  }
  return false;
}
//prime number stuff below

bool hashTable:: checkprime(unsigned int p) {
    if ( p <= 1 ) // 0 and 1 are not primes; the are both special cases
        return false;
    if ( p == 2 ) // 2 is prime
        return true;
    if ( p % 2 == 0 ) // even numbers other than 2 are not prime
        return false;
    for ( int i = 3; i*i <= p; i += 2 ) // only go up to the sqrt of p
        if ( p % i == 0 )
            return false;
    return true;
}

int hashTable:: getNextPrime (unsigned int n) {
    while ( !checkprime(++n) );
    return n; // all your primes are belong to us
}

/**
int main(){
  hashTable myhash = hashTable(5);
  myhash.insert("a");
  
  cout << myhash.find("a");
  cout<< "test";
  
 return 0; 
}
**/
