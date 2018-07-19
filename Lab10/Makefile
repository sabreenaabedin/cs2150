# Makefile for CS 2150 post-lab 10 - final

CXX	= clang++ -m32

#CXXFLAGS	= -Wall -g 

# All of the .o files for our program
#OFILES	= heap.o huffmanenc.o huffmanNode.o huffmandec.o

.SUFFIXES: .o .cpp

all: encoder decoder

encoder: huffmanenc.o heap.o huffmanNode.o
	$(CXX) -Wall -o encoder huffmanenc.o heap.o huffmanNode.o

decoder: huffmandec.o  huffmanNode.o
	$(CXX) -Wall -o decoder huffmandec.o  huffmanNode.o

clean:
	/bin/rm -f *.o *~

# dependencies
huffmanNode.o: huffmanNode.cpp huffmanNode.h
huffmanenc.o: huffmanenc.cpp huffmanNode.h heap.h
heap.o: heap.cpp heap.h huffmanNode.h
huffmandec.o: huffmandec.cpp huffmanNode.h

