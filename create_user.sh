#!/bin/bash


# we can also use read like this "read -p 'Prompt to ask like Enter name ' <varable_name>"

read -p "Enter your name: " username


echo "you Entered $username and adding to machine user"

sudo useradd -m $username

echo "user named $username added"


