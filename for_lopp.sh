#!/bin/bash

<< for_loops

this tells how to use loops specifically for loops 
syntax :
for (( counter; condition; incrementer/decrementer ));
do
	statement
done

for_loops


for (( i=1; i<=6; i++ ))
do
	touch "demo$i.sh"

done
