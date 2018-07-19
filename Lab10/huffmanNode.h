//Sabreena Abedin (sa7cx) 4/19/16 huffmanNode.h

#ifndef HUFFMANNODE_H
#define HUFFMANNODE_H

#include <stddef.h>
#include <iostream>
//using namespace std;

class huffmanNode {
public:
    huffmanNode();
    int priority;
    huffmanNode *left, *right;
    char c;
    huffmanNode(int p, huffmanNode* l, huffmanNode* r, char a);
    void printprefix(huffmanNode* node);
    
private:
  
  
};

#endif
