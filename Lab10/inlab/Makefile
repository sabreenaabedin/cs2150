# Makefile for CS 2150 in-lab 10

CXX	= clang++ -m32

CXXFLAGS	= -Wall -g 

# All of the .o files for our program
OFILES	= huffmandec.o huffmanNode.o

.SUFFIXES: .o .cpp

main:	$(OFILES)
	$(CXX) $(CXXFLAGS) $(OFILES)

clean:
	/bin/rm -f *.o *~

# dependencies
huffmandec.o: huffmandec.cpp huffmanNode.h
huffmanNode.o: huffmanNode.cpp huffmanNode.h

