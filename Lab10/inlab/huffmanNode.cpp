//Sabreena Abedin (sa7cx) 4/19/16 huffmanNode.cpp


#include "huffmanNode.h"
 //#include <stddef.h>
 using namespace std;
 
huffmanNode::huffmanNode(){
 left = NULL; 
 right= NULL;
 priority = 0;
 c = '0';

}

huffmanNode:: huffmanNode(int p, huffmanNode* l, huffmanNode* r, char a){
 left = l; 
 right = r;
 priority = p;
 c = a;
}

void huffmanNode:: printprefix(huffmanNode* node){  
  if (node != NULL){
    cout<< "*" << node->c << "*";
  if (node->left != NULL)  
    printprefix(node->left);
  if (node->right != NULL)
    printprefix(node->right);
  }

}
  

