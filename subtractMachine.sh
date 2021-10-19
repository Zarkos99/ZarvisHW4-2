#!/bin/bash
#This script takes 2 command line arguments and does the following:
#1) Subtracts the smaller from the larger then prints out the difference to stdout
#2) Counts down from the difference to 1 while printing each count to stdout
#Example usage: ./subtractMachine.sh 1 2
echo
if [ $1 -lt $2 ]
then
	echo "$1 is less than $2"
	dif=$(( $2-$1 ))	
	echo "Difference = $dif"
else
	echo "$2 is less than $1"
	dif=$(( $1-$2 ))
	echo "Difference = $dif"
fi
echo
echo "Iterating $dif time(s)"
echo
for (( i=$dif; i>=1; i-- ))
do
	echo "Iteration $i"
done	
