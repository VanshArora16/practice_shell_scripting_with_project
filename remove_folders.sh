#!/bin/bash


for (( i=$2; i<=$3; i++ ))
do
	rm -v -r "$1_$i"
done	
