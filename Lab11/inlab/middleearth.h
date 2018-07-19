//Sabreena Abedin (sa7cx) 4/26/2016 middleearth.h

#include <iostream>
#include <vector>
#include <string>
#include <map>

#ifndef MIDDLEEARTH_H
#define MIDDLEEARTH_H

using namespace std;

// see the comments in the lab11 write-up, or in middleearth.cpp

class MiddleEarth {
private:
  /** @brief: defines variables
   * 
   * 
   * 
   */
    int num_city_names, xsize, ysize;
    vector<float> xpos, ypos;
    vector<string> cities; /**< a list of the cities in vector form  */
    float *distances; 
    map<string, int> indices; /**< creates a map that allows us to determine the index of a city from its name  */

public:
    /** @brief: creates a world based on a certain number of cities
   *  
   * @param seed The starting number used to generate random cities
   * @param numcities The total number of cities we want
   * @param xsize x dimension of the 2d distance array
   * @param ysize y dimension of the 2d distance array
   * 
   */
    MiddleEarth (int xsize, int ysize, int numcities, int seed);
      /** @brief: deletes the stored distances array, deleleting the map
   *  
   */
    ~MiddleEarth();
       /** @brief: prints out the number of cities being used and lists the cities
   *  
   * 
   */
    void print();
       /** @brief: prints a tab-separated table of the distances between the cities
   *  
   */
    void printTable();
    
    
     /** @brief: gets the distance between two cities
   *  
   * @return The distance between two passed cities in decimal form
   * @param city1 The starting city
   * @param city2 The ending city to find the distance
   * 
   */
    float getDistance (string city1, string city2);
       /** @brief: returns a list of cities to visit in order
   *  
   * @return a vector containing all the cities to be visted in order, where the first city is also the last to be visited
   * @param length The number of cities you want to visit
   * 
   */
    vector<string> getItinerary(unsigned int length);
};

#endif