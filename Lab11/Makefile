# Sabreena Abedin (sa7cx) 4/26/2016 Makefile-final
# Makefile for CS 2150 pre-lab 11

CXX	= clang++ -m32

CXXFLAGS	= -Wall -g 

# All of the .o files for our program
OFILES	= middleearth.o topological.o

.SUFFIXES: .o .cpp

main:	$(OFILES)
	$(CXX) $(CXXFLAGS) $(OFILES)
	doxygen

clean:
	/bin/rm -f *.o *~

# dependencies
huffmandec.o: huffmandec.cpp huffmanNode.h
huffmanNode.o: huffmanNode.cpp huffmanNode.h