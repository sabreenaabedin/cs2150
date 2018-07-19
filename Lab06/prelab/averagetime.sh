#!/bin/bash
#Sabreena Abedin (sa7cx) 3/15/16 averagetime.sh

echo "Insert Dictionary: "
read DICTIONARY
echo "Insert Grid: "
read GRID

#DICTIONARY=words.txt
#GRID=50x50.grid.txt

RUN1=`./a.out $DICTIONARY $GRID | tail -1`
RUN2=`./a.out ${DICTIONARY} ${GRID} | tail -1`
RUN3=`./a.out ${DICTIONARY} ${GRID} | tail -1`
RUN4=`./a.out ${DICTIONARY} ${GRID} | tail -1`
RUN5=`./a.out ${DICTIONARY} ${GRID} | tail -1`

AVG=$(( (RUN1 + RUN2 + RUN3 + RUN4 + RUN5) / 5 ))

echo "${AVG}"