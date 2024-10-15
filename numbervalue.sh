#!/bin/bash
#
#
# if statement
echo "Checking if a number is positive, negative, or zero... from one to ten"
read -p "Enter a number : " number

if [ "$number" -gt 0 ]; then
	echo "The number is positive."
elif [ "$number" -lt 0 ]; then
	echo "The number is negative."
else
	echo "The number is zero."
fi
sleep 1
#For loop
echo "Listing numbers from 1 to 10: "
for i in {1..10}; do
	echo "Number: $i"
	sleep 1
done
sleep 1
#While loop
echo "Counting down from 10 to 1: "
count=10
while [ $count -gt 0 ]; do
	echo "Countdown: $count"
	((count--))
       sleep 1	
done
sleep 1
#Until loop
echo "Counting up to 10: "
count=1
until [ $count -gt 10 ]; do
	echo "Count: $count"
	((count++))
       sleep 1	
done
sleep 1
echo "Script execution completed."
