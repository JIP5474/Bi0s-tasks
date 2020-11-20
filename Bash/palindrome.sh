#!/bin/bash
#Script to find if a string is palindrome or not

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
