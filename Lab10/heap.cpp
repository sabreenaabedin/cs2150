//Sabreena Abedin (sa7cx) 4/19/16 binary_heap.cpp
// Code written by Aaron Bloomfield, 2014
// Released under a CC BY-SA license
// This code is part of the https://github.com/aaronbloomfield/pdr repository

#include <iostream>
#include "heap.h"
#include "huffmanNode.h"
//using namespace std;


// default constructor
heap::heap() :heap_size(0){ 
    h.push_back(NULL); 
}

heap::heap(vector<huffmanNode*> vec) : heap_size(vec.size()){
  h = vec;
  h.push_back(h[0]);
  huffmanNode* dummy = NULL;
  h[0] = dummy;
  for( int i = heap_size; i > 0; i--)
    percolateDown(h[i],i);
  
}

heap::~heap() {
}

void heap::insert(huffmanNode* node) {
    h.push_back(node);
    percolateUp(node, ++heap_size);
}

void heap::percolateUp(huffmanNode* node, int hole) {
    // get the value just inserted
  huffmanNode * newnode = node;
    // while we haven't run off the top and while the
    // value is less than the parent...
    for ( ; (hole > 1) && (newnode->priority < h[hole/2]->priority); hole /= 2 )
        h[hole] = h[hole/2]; // move the parent down
    // correct position found!  insert at that spot
    h[hole] = newnode;
}

huffmanNode* heap::deleteMin() {
    if ( heap_size == 0 )
        throw "deleteMin() called on empty heap";
    // save the value to be returned
    huffmanNode * ret = h[1];
    // move the last inserted position into the root
    h[1] = h[heap_size--];
    // make sure the vector knows that there is one less element
    h.pop_back();
    // percolate the root down to the proper position
    percolateDown(h[1], 1);
    // return the old root node
    return ret;
}

void heap::percolateDown(huffmanNode* node, int hole) {
    // get the value to percolate down
    huffmanNode* x = node;
    // while there is a left child...
    while ( hole*2 <= heap_size ) {
        int child = hole*2; // the left child
        if ( (child+1 <= heap_size) && (h[child+1]->priority < h[child]->priority) )
            child++;
        if ( x->priority > h[child]->priority ) {
            h[hole] = h[child]; // move child up
            hole = child;             // move hole down
        } else
            break;
    }
    h[hole] = x;
}

huffmanNode* heap::findMin() {
    if ( heap_size == 0 )
        throw "findMin() called on empty heap";
    return h[1];
}

unsigned int heap::size() {
    return heap_size;
}

void heap::makeEmpty() {
    heap_size = 0;
}

bool heap::isEmpty() {
    return heap_size == 0;
}

void heap:: printheap(){
 for (int i = 1; i < h.size(); i++){
  cout << "{ " << h[i]-> priority << ", " << h[i]->c <<" }"; 
 }
  
  
}
