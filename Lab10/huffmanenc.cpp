//Sabreena Abedin (sa7cx) 4/19/16 huffmanenc.cpp - final
#include "huffmanNode.h"
#include "heap.h"
#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <vector>
#include <string>
using namespace std;

void getCode(huffmanNode* node, string str, vector<string> &lookup){
  string temp = str;
  if(node->left == NULL && node->right == NULL){ //if at leaf node
   char g = node->c;  // get letter and store string
   int z = (int) g;
   lookup[z] = temp;
  }
  else{
    string t = temp + "0";
    getCode(node->left, t, lookup);
    getCode(node->right, temp + "1", lookup);
  }
}

  int main (int argc, char **argv) {

    vector<int> charList = vector<int>(128);  	//will hold the frequencies
    if ( argc != 2 ) { 				//too many arguments error
	
	  cout << "Must supply the input file name as the one and only parameter" << endl;
	  exit(1);
      }
    FILE *fp = fopen(argv[1], "r");
    if ( fp == NULL ) { 			//no file found error
	  cout << "File '" << argv[1] << "' does not exist!" << endl;
	  exit(2);
      }
      
    char g;  
    while ( (g = fgetc(fp)) != EOF ){		//calculate character frequency
      int z = (int) g;
      if(z >31 && z < 127){
	charList[z]++;
      }
     }
    /*  
  for(int i = 1; i < charList.size(); i++){ // print charList
	cout<< charList[i] << " "; 
  }*/
    
     vector<huffmanNode*> forest;
     for(int i = 1; i < charList.size(); i++){   //turn charList into forest of nodes
	if(charList[i] > 0){
	  char a = (char) i;
      huffmanNode *node = new huffmanNode(charList[i], NULL, NULL, a); 
      forest.push_back(node);
	}
      }      
      
      heap myheap = heap(forest);  //turn forest into single tree
     
      while(myheap.size() != 1){
	huffmanNode* left = myheap.deleteMin();
	huffmanNode* right = myheap.deleteMin();
	int p = (right->priority) + (left-> priority);
	huffmanNode* node = new huffmanNode(p, left, right, '\0');
	myheap.insert(node);

      }
    
      huffmanNode * huffmanTree = myheap.deleteMin();
     // huffmanTree->printprefix(huffmanTree);

    
      
        //create key for compression
      vector<string> lookup = vector<string>(128);
      getCode(huffmanTree, "", lookup);
 
   
      
      for(int i = 0; i < lookup.size(); i++){
	if(lookup[i] != ""){
	  char z = (char) i;
	  if (z == ' ')
	  cout << "space" << " " << lookup[i] << endl;
	  else 
	    cout << z << " " << lookup[i] << endl;
	}
	
      }     
      cout  << "----------------------------------------" << endl;
      //encode
      rewind(fp);
      double count= 0;
       double original = 0;
      string result = "";	//add key to beginning of result
      while ( (g = fgetc(fp)) != EOF ){
	count += 1;
	original += 8;
	int z = (int) g;
      result += lookup[z] + " ";
      }
      double cost = 0;
      for (int i = 0; i < lookup.size(); i++){ //calculate huffman cost
	if(lookup[i] != ""){
	 double z = (double) charList[i];
	  cost += (z/count) * lookup[i].length();
	}
      }
      
      double ratio = 0; //calculate compression ratio
     
     
      double compressed = 0;
      for(int i = 0; i < result.length(); i++){
	if (result.at(i) == '0' || result.at(i) == '1')
	  compressed += 1;
	else if (result.at(i) == ' ')
	  compressed += 0;
	else 
	  compressed += 8;
      }
       ratio = original/ compressed;
      cout << result << endl << "----------------------------------------"<< endl;
      cout << "The compression ratio is " << ratio << endl;
      cout << "The Huffman tree cost: " << cost << " bits per character." << endl;
	
      fclose(fp);
    
    return 0;
}