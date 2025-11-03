#!/bin/bash



<< even
here we try to print only even numbers
even

num=10

while [[ $num -ge 0  ]]
do
	if  (( num%2==0 ))
	then 
		echo "$num"
	fi			
	(( num-- ))

done
