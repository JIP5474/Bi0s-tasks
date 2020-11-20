#!/bin/bash
#Script to find factorial of a number

read -p "Enter the number to find its factorial: " NUM
fact=1
for ((i=1;i<=NUM;i++)) do
	fact=$((fact*$i))
done

echo "The factorial of the number is $fact"


