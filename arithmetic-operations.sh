#!/bin/bash
#Script for doing arithmetic operations

read -p "Enter number 1: " num1
read -p "Enter number2: " num2

echo "Sum =" $((num1+num2))
echo "Diff=" $((num1-num2))
echo "Product="$((num1*num2))

if [ $num2 -ne 0 ]; then
	echo "Division="$((num1/num2))
else 
	echo "Please enter a non zero value to for division"

fi

