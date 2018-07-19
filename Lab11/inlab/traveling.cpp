//Sabreena Abedin (sa7cx) 4/26/2016 traveling.cpp -final
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <algorithm>
#include <limits>
#include <cfloat>
#include "middleearth.h"

using namespace std;


 /** @brief: computes the distance between each city in the list and returns the total
   * @param me The world in which we are working, determines the city distances
   * @param start the city that is both the start and end destination
   * @param dests the list of cities to be visted between the start and end city (which are both the same city)
   * @return returns the sum of the distances between all the cities listed including returning to the start city, in decimal form
   */
float computeDistance (MiddleEarth &me, string start, vector<string> dests);

 /** @brief: returns a string of the cities to be visited in order, starting from the start city and ending at the same city
   * @param start the city that is both the start and end destination
   * @param dests the list of cities to be visted between the start and end city (which are both the same city)
   * @return returns the string list of all the cities in order 
   */
string printRoute (string start, vector<string> dests);

 /** @brief: finds the shortest path between a list of cities based on permutations trying each option
  * takes in the width of the world (for the distances array), height of the world (for the distances array), the number of cities in the world, the seed used to generate the random world distances, and the number of other cities to visit, not including the start/end city
   */
int main (int argc, char **argv) {
    // check the number of parameters
    if ( argc != 6 ) {
        cout << "Usage: " << argv[0] << " <world_height> <world_width> "
             << "<num_cities> <random_seed> <cities_to_visit>" << endl;
        exit(0);
    }
    // we'll assume the parameters are all well-formed
    int width, height, num_cities, rand_seed, cities_to_visit;
    sscanf (argv[1], "%d", &width);
    sscanf (argv[2], "%d", &height);
    sscanf (argv[3], "%d", &num_cities);
    sscanf (argv[4], "%d", &rand_seed);
    sscanf (argv[5], "%d", &cities_to_visit);
    // Create the world, and select your itinerary
    MiddleEarth me(width, height, num_cities, rand_seed);
    vector<string> dests = me.getItinerary(cities_to_visit);
   /* vector<string> toPermute;
    for (int i = 1; i < dests.size(); i++){
     toPermute.push_back(dests[i]); 
    }*/
    string start = dests[0];
    vector<string>:: iterator first = dests.begin();
    dests.erase(first);
    vector<string>:: iterator last = dests.end();
    
    string answer;
    float distance = FLT_MAX; 
    
    sort(first, last);
   while(next_permutation(first, last)){    
     float computed = computeDistance(me, start, dests);
     
     
      if(computed < distance){
	distance = computed;
	answer = printRoute(start, dests);
      }
    }
    if(dests.size() == 1){
      distance = computeDistance(me, start, dests);
      answer = printRoute(start, dests);
    }
    
    cout << "Minimum path has distance " << distance << ": " << endl;
    cout << answer;
    
    return 0;
}

// This method will compute the full distance of the cycle that starts
// at the 'start' parameter, goes to each of the cities in the dests
// vector IN ORDER, and ends back at the 'start' parameter.
float computeDistance (MiddleEarth &me, string start, vector<string> dests) {
 float ans = 0.0;
  for( int i = 1; i < dests.size(); i++){
    ans += me.getDistance(dests[i-1], dests[i]);
  }
  ans += me.getDistance(dests[dests.size()-1], start);
  ans += me.getDistance(start, dests[0]);
  return ans;
}

// This method will print the entire route, starting and ending at the
// 'start' parameter.  The output should be of the form:
// Erebor -> Khazad-dum -> Michel Delving -> Bree -> Cirith Ungol -> Erebor
string printRoute (string start, vector<string> dests) {
   string result = start + " -> ";
   for (int i = 0; i < dests.size(); i++){
    result += dests[i] + " -> "; 
   }
   result += start + "\n";
   
   return result;
   
}







