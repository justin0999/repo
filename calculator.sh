#!/bin/bash
#
#
echo "Enter a first number: " 
read num1

echo "Enter a second number: "
read num2

echo "Choos an operation: +, -, *, '/'"
read op

case $op in
	+) result=$(echo "$num1 + $num2" | bc) ;;
	-) result=$(echo "$num1 - $num2" | bc) ;;
       \*) result=$(echo "$num1 * $num2" | bc) ;;
	/) result=$(echo "$num1 / $num2" | bc) ;;
	*) result=$(echo "$num1 * $num2" | bc) ;;
esac

echo "Your result is: $result"
