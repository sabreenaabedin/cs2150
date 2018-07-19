//Sabreena Abedin (sa7cx) 4/19/16 binary_heap.h
// Code written by Aaron Bloomfield, 2014
// Released under a CC BY-SA license
// This code is part of the https://github.com/aaronbloomfield/pdr repository

#ifndef HEAP_H
#define HEAP_H

#include <vector>
#include "huffmanNode.h"
using namespace std;

class heap {
public:
    heap();
    heap(vector<huffmanNode*> vec);
    ~heap();

    void insert(huffmanNode::huffmanNode* node);
    huffmanNode* findMin();
    huffmanNode* deleteMin();
    unsigned int size();
    void makeEmpty();
    bool isEmpty();
    void printheap();
  

private:
    vector<huffmanNode*> h;
    unsigned int heap_size;

    void percolateUp(huffmanNode* node, int hole);
    void percolateDown(huffmanNode*node, int hole);
};

#endif