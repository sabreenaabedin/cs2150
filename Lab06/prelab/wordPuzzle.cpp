//Sabreena Abedin (sa7cx) 3/18/2016 wordPuzzle.cpp

/**
timer using words.txt: AT HOME
3x3- 0.005348 seconds
4x7- 0.010563 seconds
5x8- 0.021784 seconds
50x50- 2.56047 seconds
140x70- 11.0314 seconds
250x250- 59.8527 seconds
300x300- 70.78 seconds

timer using words.txt: IN LAB
3x3- 0.000186 seconds
4x7- 0.000718 seconds
5x8- 0.001359 seconds
50x50- 0.194653 seconds
140x70- 0.865247 seconds
250x250- 5.91913 seconds
300x300- 8.4183 seconds

words2 and 300 x 300 without -O2: 6.72569 seconds
words and 250x250 without -O2: 5.91132 seconds

timer using words.txt: AT HOME with -O2
3x3- 0.004596 seconds
4x7- 0.009276 seconds
5x8- 0.01008 seconds
50x50- 2.00348 seconds
140x70- 8.33943 seconds
250x250- 57.1418 seconds
300x300- 73.0138 seconds

words2 and 300 x 300 with -O2: 33.8697 seconds
words and 250x250 with -O2: 57.1418 seconds

big theta running time: since any hashing methods will be dominated by the nested loops in the actual comparison section, only the nested loops are considered. Both the word length and direction searches are constant, so they can be ignored for now. This leaves the column and row checks as well as the hash function comparison which in the worst case scenario will iterate through all the words since in the worst case scenario all of the words are hashed to the same location and are chained. 
If r = rows, c= columns, and w = words, then the big theta run time would be r*c*w. 

**/


#include "timer.h"
#include <iostream>
#include <fstream>
#include <string>
#include <stdlib.h>
#include "hashTable.h"
#include <sstream>
using namespace std;

#define MAXROWS 500
#define MAXCOLS 500
char table[MAXROWS][MAXCOLS];

bool readInTable (string filename, int &rows, int &cols);
char* getWordInTable (int startRow, int startCol, int dir, int len,
                      int numRows, int numCols);


bool readInTable (string filename, int &rows, int &cols) {
    string line;
    ifstream file(filename.c_str());
    if ( !file.is_open() )
        return false;
    file >> rows;
    cout << "There are " << rows << " rows." << endl;
    getline (file,line); // eats up the return at the end of the line
    file >> cols;
    cout << "There are " << cols << " cols." << endl;
    getline (file,line); // eats up the return at the end of the line
    getline (file,line);
    file.close();
    int pos = 0; // the current position in the input data
    for ( int r = 0; r < rows; r++ ) {
        for ( int c = 0; c < cols; c++ ) {
            table[r][c] = line[pos++];
        }
        cout << endl;
    }
   
    return true;
}


char* getWordInTable (int startRow, int startCol, int dir, int len,
                      int numRows, int numCols) {
 
    static char output[256];
    if ( len >= 255 )
        len = 255;
    int pos = 0, r = startRow, c = startCol;
    for ( int i = 0; i < len; i++ ) {
        if ( (c >= numCols) || (r >= numRows) || (r < 0) || (c < 0) )
            break;
        output[pos++] = table[r][c];
        switch (dir) { // assumes table[0][0] is in the upper-left
            case 0:
                r--;
                break; // north
            case 1:
                r--;
                c++;
                break; // north-east
            case 2:
                c++;
                break; // east
            case 3:
                r++;
                c++;
                break; // south-east
            case 4:
                r++;
                break; // south
            case 5:
                r++;
                c--;
                break; // south-west
            case 6:
                c--;
                break; // west
            case 7:
                r--;
                c--;
                break; // north-west
        }
    }
    // set the next character to zero (end-of-string)
    output[pos] = 0;
    // return the string (a C-style char* string, not a C++ string
    // object)
    return output;
}
//bool readInDictionary(string filename);

string getDirection(int a);
int wordsfoundint = 0;
string wordsfoundstring = "";
unsigned int dictionary_size;
timer t;

  int main(int argc, char* argv[]) {
   
    //get dictionary size
    string filename = argv[1];
    string line;
    ifstream file(filename.c_str());
    while( getline (file, line)){
      dictionary_size++;
    }
    file.close();  
    
    hashTable myHash = hashTable(dictionary_size); //create dictionary hash table
    
   //read in dictionary 
    string line2;
   ifstream file2(filename.c_str());
    while( getline (file2, line2)){
      myHash.insert(line2);
    }
    file2.close();   
    
    int rows, cols;
    bool result = readInTable (argv[2], rows, cols); //read in grid
    if ( !result ) {
      cout << "Error reading in file!" << endl;
      exit(1);
    }
    cout << endl;
  
    string output = "";
   t.start(); //start search
    for (int j = 0; j < rows; j++){
      for (int k = 0; k < cols; k++){
	for (int m = 3; m < 22; m++){
	  for (int i = 0; i < 8; i++){
	    string word=  getWordInTable(j,k,i,m,rows,cols); 
	    if(word.length()< m)
	      continue;
	    if(myHash.find(word)){
	      stringstream out;
	      out<< j;
	      string jstr = out.str();
	      out<<k;
	      string kstr = out.str();
	      output += getDirection(i) + " (" + jstr+ "," + kstr + "): " + word +"\n";
	      wordsfoundint++;
			    
			
	    }
	  }
	}
      }
      
    }
     		
     
    t.stop(); //end search
    cout<< output;
     cout<< wordsfoundint << " words found" <<endl;
      cout << "Found all words in " << t.getTime()<< " seconds" << endl;
      cout<< (int)(t.getTime()*1000) <<endl;
 
    return 0;
  }
	  string getDirection(int a){
	    if (a == 0)
	      return "N";
	    else if (a == 1)
	      return "NE";
	    else if (a== 2)
	      return "E";
	    else if (a == 3)
	      return "SE";
	    else if (a== 4)
	      return "S";
	    else if (a == 5)
	      return "SW";
	    else if (a== 6)
	      return "W";
	     else
	      return "NW";
	  }
  
