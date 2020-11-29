#!/bin/bash
#Using functions
#using menu driven script

arithmetic(){

	echo "Sum =" $(($1+$2))
	echo "Diff=" $(($1-$2))
	echo "Product="$(($1*$2))

	if [ $2 -ne 0 ]; then
        	echo "Division="$(($1/$2))
	else
        	echo "Please enter a non zero value to for division"

	fi
}

factorial(){
	fact=1
	for ((i=1;i<=$1;i++)) do
	        fact=$((fact*$i))
	done

	echo "The factorial of the number is $fact"
}

persistence(){
	echo "Script to find a file named persistence"

	find / -type f -name persistence 
}

strlen(){
	str=$1
	len=${#str}

	echo "The length of the string is $len"
}

palindrome(){
	string=$1

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
	
	if [[ $1%2 -eq 0 ]]; then
	        echo "It is an even number"
	else
	        echo "It is an odd number"
	fi
}

echo "Menu"					#using menu driven script
echo "1.Arithmetic operations"
echo "2.Factorial"
echo "3.To find a file named persistence"
echo "4.Find string length"
echo "5.Palindrome"
echo "6.Odd or even"
read -p "Choose your option: " ch
case $ch in
	"1" )
		read -p "Enter number 1: " num1
        	read -p "Enter number2: " num2
		arithmetic $num1 $num2
		;;

	"2" )
		read -p "Enter the number to find its factorial: " NUM
		factorial $NUM
		;;

	"3" )
		persistence
		;;

	"4" )
		read -p "Enter a string to find its length: " str
		strlen $str
		;;

	"5" )
		read -p "Enter a string: " s
		palindrome $s
		;;

	"6" )
		read -p "Enter a number: " no
		oddoreven $no
		;;

	* )
		echo "Wrong choice"
		;;

esac
