#!/bin/bash
#Script to check whether a given no. is odd or even

read -p "Enter a number: " NUM

if [[ $NUM%2 -eq 0 ]]; then
	echo "It is an even number"
else
	echo "It is an odd number"
fi

