#!/bin/bash


<< while_loop

here we see while loop 
syntax:

counter

while [[ condition ]]
do
	----
	---
	---
	updater
done


while_loop



num=0

while [[ $num -le 6 ]]
do
	echo "lol $num"
	num=$((num + 1))
done

