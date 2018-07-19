//Sabreena Abedin (sa7cx) 4/19/16 huffmandec.cpp
// This program is the skeleton code for the lab 10 in-lab.  It uses
// C++ streams for the file input, and just prints out the data when
// read in from the file.

#include <iostream>
#include <fstream>
#include <sstream>
#include <stdlib.h>
#include <vector>
#include <string>
#include <sstream>
#include "huffmanNode.h"

using namespace std;

void makeTree(huffmanNode * root, string prefix, char c){
 
   
   if (prefix.length() == 1){ // if last item, make leaf
    huffmanNode * leaf = new huffmanNode(0, NULL, NULL, c); 
      if(prefix[0] == '0')
	root->left = leaf;
      else
	 root->right = leaf;
      
      
    } else if (prefix[0] == '0'){
     // create left node 
      if (root->left == NULL){
      huffmanNode * internal = new huffmanNode(0, NULL, NULL, '\0');
      root->left = internal;
      string sub = prefix.substr(1, prefix.length());
      makeTree(internal, sub, c);
      } else{
	 string sub = prefix.substr(1, prefix.length());
	 makeTree(root->left, sub, c);
      }
      
    } else { // = 1
     // create right node 
      if (root->right == NULL){
      huffmanNode * internal = new huffmanNode(0, NULL, NULL, '\0');
      root->right = internal;
      string sub = prefix.substr(1, prefix.length());
      makeTree(internal, sub, c);
      } else {
	string sub = prefix.substr(1, prefix.length());
	 makeTree(root->right, sub, c);
      }
    }
  
}

int main (int argc, char **argv) {
    vector<string> prefixTable = vector<string>(128);
    // verify the correct number of parameters
    if ( argc != 2 ) {
        cout << "Must supply the input file name as the only parameter" << endl;
        exit(1);
    }
    // attempt to open the supplied file; must be opened in binary
    // mode, as otherwise whitespace is discarded
    ifstream file(argv[1], ifstream::binary);
    // report any problems opening the file and then exit
    if ( !file.is_open() ) {
        cout << "Unable to open file '" << argv[1] << "'." << endl;
        exit(2);
    }
    // read in the first section of the file: the prefix codes
    while ( true ) {
        string character, prefix;
        // read in the first token on the line
        file >> character;
        // did we hit the separator?
        if ( (character[0] == '-') && (character.length() > 1) )
            break;
        // check for space
        if ( character == "space" )
            character = " ";
        // read in the prefix code
        file >> prefix;
        // do something with the prefix code
	
	  int z = (int) character[0];
	  prefixTable[z] = prefix;
	
     
    }
    // read in the second section of the file: the encoded message
    stringstream sstm;
    while ( true ) {
        string bits;
        // read in the next set of 1's and 0's
        file >> bits;
        // check for the separator
        if ( bits[0] == '-' )
            break;
        // add it to the stringstream
        sstm << bits;
    }
    string allbits = sstm.str();
    // at this point, all the bits are in the 'allbits' string
 

    file.close();
    
    huffmanNode* root = new huffmanNode(0, NULL, NULL, '\0');
     //create huffman tree
    for (int i = 0; i < prefixTable.size(); i++){
      if(prefixTable[i] != ""){
	char a;
	  a = (char) i;
     makeTree(root, prefixTable[i], a);

      }
    }
 // decode
string decoded = "";
huffmanNode* cur = root;
for (int i = 0; i < allbits.length(); i++){
 if (allbits[i] == '1'){ // internal node 
   if( cur->right != NULL)
     cur = cur->right;
   
   
  } else if (allbits[i] == '0'){
   if (cur->left != NULL)
     cur = cur->left;
  }  
  
   if (cur-> left == NULL && cur->right == NULL){// at leaf node
     string a = "";
     stringstream ss;
     ss << (cur->c);
     ss >> a;
    if (cur->c == ' ')
      decoded += " ";
    else 
      decoded += a;
   cur = root;
   
  } 
}
      cout << decoded << endl;
     return 0;
    
}