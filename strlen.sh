#!/bin/bash
#Script to find the length of a string

read -p "Enter a string to find its length: " str
len=${#str}

echo "The length of the string is $len"

