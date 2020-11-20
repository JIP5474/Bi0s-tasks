#!/bin/bash
#Using functions

arithmetic(){
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
}

factorial(){
	read -p "Enter the number to find its factorial: " NUM
	fact=1
	for ((i=1;i<=NUM;i++)) do
	        fact=$((fact*$i))
	done

	echo "The factorial of the number is $fact"
}

persistence(){
	echo "Script to find a file named persistence"

	find / -type f -name persistence 2>/dev/null
}

strlen(){
	read -p "Enter a string to find its length: " str
	len=${#str}

	echo "The length of the string is $len"
}

palindrome(){
	read -p  "Enter a string: " string

	len=${#string}
	palin=0
	for (( i=0;i<=len/2;i+=1 )); do
	        if [[ ${string:i:1} != ${string:len-i-1:1} ]]; then
	                palin=0
	                break
	        else
	                palin=1
	        fi
	done
	if [[ $palin -eq 1 ]]; then
        	echo "The given string is a palindrome"
	else
	        echo "The given string is not a palindrome"
	fi
}

oddoreven(){
	read -p "Enter a number: " NUM
	
	if [[ $NUM%2 -eq 0 ]]; then
	        echo "It is an even number"
	else
	        echo "It is an odd number"
	fi
}

echo "Menu"
echo "1.Arithmetic operations"
echo "2.Factorial"
echo "3.To find a file named persistence"
echo "4.Find string length"
echo "5.Palindrome"
echo "6.Odd or even"
read -p "Choose your option: " ch
if [[ $ch -eq 1 ]]; then
	arithmetic
elif [[ $ch -eq 2 ]]; then
	factorial
elif [[ $ch -eq 3 ]]; then
	persistence
elif [[ $ch -eq 4 ]]; then
	strlen
elif [[ $ch -eq 5 ]]; then
	palindrome
elif [[ $ch -eq 6 ]]; then
	oddoreven
else
	echo "Wrong choice"
fi
