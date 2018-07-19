#!/bin/bash
#Sabreena Abedin (sa7cx) 3/15/16 averagetime.sh


echo "Enter the exponent for counter.cpp: "
read iterations
iterator=$iterations
runsum=0

if [[ $iterations = 'quit' ]] ; then exit 1

else
 while [[ $iterator -gt 0 ]]; do
    echo "Running iteration $iterator" 
    run=`./a.out $iterations | tail -1`
    runsum=$(( $runsum + $run ))
    iterator=$(( $iterator - 1 ))
    echo "time taken: $run"

  done
fi

AVG=$(( ($runsum) / $iterations ))

echo "$iterations iterations took $runsum"
echo "Average time was $AVG"
