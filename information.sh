#!/bin/bash
#
#Author Giyosiddin Norbaev
#Created 10/10/2024
#School Practice

echo "What is your name ? "
read name
sleep 1
echo "How old are you ? "
read age
sleep 1
echo "Where do you live ? "
read city
sleep 1
echo "What do you do for living ? "
read job
sleep 1
echo "Your name is $name. You are $age years old. You live in $city. Your job is $job." 

sleep 2
echo "Good job. Now I have some questions for you $name."
sleep 2

read -p "Do you know how to check time and date ? " time
sleep 1
$time
sleep 1

read -p "Do You know how to create a new user ? " user
sleep 1
sudo $user $name
sleep 1

read -p "Set a password please ? " password
sleep 1
sudo $password $name
sleep 1

read -p "Switch to new user. " new
sleep 1
sudo $new Giyosiddin
sleep 1

read -p "How to create a directory ? " command
$command dir1
sleep 1
ls
sleep 1

read -p "How to create a file ? " secondcommand
$secondcommand file1
sleep 1
ls
sleep 1

read -p "How to move file into the directory ? " thirdcommand
$thirdcommand file1 dir1/
sleep 1
ls dir1/
sleep 1

read -p "Now you can add some text into the file. " text
echo "$text" > dir1/file1
sleep 1

echo "Here is what you have in the file. " 
sleep 1

echo "$text."
sleep 1

echo "Good job. This is some questions for refresh your linux knowledge. "

