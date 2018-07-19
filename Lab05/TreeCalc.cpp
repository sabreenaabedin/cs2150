// Sabreena Abedin (sa7cx) 3/1/16 TreeCalc.cpp
// TreeCalc.cpp:  CS 2150 Tree Calculator method implementations

#include "TreeCalc.h"
#include <iostream>
#include <cstdlib>
#include <stdlib.h>

using namespace std;

//Constructor
TreeCalc::TreeCalc() {
  


}

//Destructor- frees memory
TreeCalc::~TreeCalc() {
  if(mystack.size()!=0){
  cleanTree(mystack.top());
  }
}

//Deletes tree/frees memory
void TreeCalc::cleanTree(TreeNode* ptr) {
  if(ptr != NULL){   
  cleanTree(ptr->left);
  cleanTree(ptr->right);
  delete ptr;
  }

}

//Gets data from user - DO NOT EDIT
void TreeCalc::readInput() {
    string response;
    cout << "Enter elements one by one in postfix notation" << endl
         << "Any non-numeric or non-operator character,"
         << " e.g. #, will terminate input" << endl;
    cout << "Enter first element: ";
    cin >> response;
    //while input is legal
    while (isdigit(response[0]) || response[0]=='/' || response[0]=='*'
            || response[0]=='-' || response[0]=='+' ) {
        insert(response);
        cout << "Enter next element: ";
        cin >> response;
    }
}

//Puts value in tree stack
void TreeCalc::insert(const string& val) {
 if(!(val == "/" || val == "*" || val == "+" || val == "-")){
    //int a= atoi (val.c_str());
 
  TreeNode *newNode= new TreeNode(val);
    mystack.push(newNode);
 
  }else{
    TreeNode* child2 =  mystack.top();
    mystack.pop();
    TreeNode* child1 = mystack.top();
    mystack.pop();
    TreeNode *newNode= new TreeNode;
    newNode->value = val;
    newNode->left = child1;
    newNode->right = child2;
    mystack.push(newNode);

  }
  // insert a value into the tree
}


void TreeCalc::printPrefix(TreeNode* ptr) const { // node, left, right

  if (!(ptr== NULL)){
    cout<< ptr-> value << " ";

    printPrefix(ptr->left);

    printPrefix(ptr->right);
  }


}

void TreeCalc::printInfix(TreeNode* ptr) const { //left, node, right
  // print tree in infix format with appropriate parentheses
  if(ptr!=NULL){
    string val = ptr->value;
    if(!(val == "/" || val == "*" || val == "+" || val == "-")){
      cout <<ptr->value;

    }
    else {
      cout << "(";
      printInfix(ptr->left);
      cout << " " << ptr->value << " ";
      printInfix(ptr->right);
      cout << ")";


    }}

}


void TreeCalc::printPostfix(TreeNode* ptr) const { // left, right, node
  // print the tree in postfix form
  
  if(!(ptr==NULL)){
    printPostfix(ptr->left);
    printPostfix(ptr->right);
    cout << ptr->value << " ";
  }

}



void TreeCalc::printOutput() const {
  if (mystack.size()!=0 && mystack.top()!=NULL) {
    TreeNode *ptr =  mystack.top();
    cout<< "Expression tree in postfix expression: " ;
    printPostfix(ptr);
    cout << "\nExpression tree in infix expression: ";
    printInfix(ptr);
    cout << "\nExpression tree in prefix expression:";
    printPrefix(ptr);
    cout <<endl;
      
  } else
    cout<< "Size is 0." << endl;
}

//Evaluates tree, returns value
// private calculate() method
int TreeCalc::calculate(TreeNode* ptr) const {
 string val = ptr->value;

  int answer= 0;
  if(!(val == "/" || val == "*" || val == "+" || val == "-")){
    answer =atoi((ptr->value).c_str());
 
  } else{
    int b = calculate(ptr->left);
    int a = calculate(ptr->right);
   
    if (val== "+"){
      answer = a+b;
    }else if (val== "/"){
    
      answer = b/a; 
    }else if (val =="*"){
      answer = a*b;
    }else if (val == "-"){
      answer = b-a;
    }
  }
  return answer;
}

//Calls calculate, sets the stack back to a blank stack
// public calculate() method. Hides private data from user
int TreeCalc::calculate() {
    int i = 0;
    i = calculate(mystack.top());
    cleanTree(mystack.top());
    mystack.pop();
    return i;
}
