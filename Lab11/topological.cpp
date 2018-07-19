//Sabreena Abedin (sa7cx) 4/26/2016 topological.cpp-final

#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <string>
#include <queue>
#include <deque>
#include <vector>
#include <map>
using namespace std;
/** @brief: an object that holds a class's name and indegree
 * @public
   * 
   * 
   */
class vertex{
public:
    int indegree; /**< the number of incoming edges  */
    string name; /**< the class name */
    vector<vertex*> adj; /**< all dependecy classes stored as vectors in an array  */
    vertex();
    vertex(string n);
    
};
/** @brief: constructor: creates a new empty vertex node where the indegree is set to 0 and the name is set to an empty string
 * 
   * 
   * 
   */
vertex:: vertex(){
 indegree = 0;  
 name = "";

}
  /** @brief: constructor: creates a new vertex node
   * 
   * @param n the name of the class being represented by this vertex
   * 
   */
vertex:: vertex(string n){
 indegree = 0; 
 name = n;

}
/** @brief: sorts classes topologically
 * 
 * 
 * 	Reads in a list of classes and their dependence and creates vectors which are then sorted topologically for a valid listing of class orders.
 *
   * 
   * 
   */
int main (int argc, char **argv) {
    // verify the correct number of parameters
    if ( argc != 2 ) {
        cout << "Must supply the input file name as the one and only parameter" << endl;
        exit(1);
    }
    // attempt to open the supplied file
    ifstream file(argv[1], ifstream::binary);
    // report any problems opening the file and then exit
    
    if ( !file.is_open() ) {
        cout << "Unable to open file '" << argv[1] << "'." << endl;
        exit(2);
    }
    // read in two strings
    string s1, s2;
    
   //create hash table for class name indices
    map<string, vertex*> mymap;
    vector<vertex*> vertexlist;
    while(s1 != "0" && s2!= "0"){     
    file >> s1;
    file >> s2;
    if (s1 != "0" && s2!= "0"){
      if(mymap.find(s1) == mymap.end()){
	vertex * v = new vertex(s1);
	 mymap[s1]= v; //index the class names
	 vertexlist.push_back(v);

	}
	if(mymap.find(s2) == mymap.end()){
	 vertex * v = new vertex(s2);
	 mymap[s2]= v; //index the class names
	 vertexlist.push_back(v);

	}
	mymap[s1]->adj.push_back(mymap[s2]);
	mymap[s2]->indegree++;
	
      }
    }
    
    file.close();
    
    
    //topological sort
    string result = "";
    queue<vertex*> q = queue<vertex*>();
    vertex *v,*w;
 

    for(int i = 0; i < vertexlist.size(); i++){
    if (vertexlist[i]->indegree == 0)
     q.push(vertexlist[i]);
    }
    while(!q.empty()){
      v= q.front();
      q.pop();
      result = result + v->name + " ";

      
      for(int j = 0; j < v->adj.size(); j++){
	v->adj[j]->indegree--;
	if (v->adj[j]->indegree == 0){
	  w = v->adj[j];
	  q.push(w);
	}
      }
    }
      
     cout << result << endl;
  

    
    return 0;
}










