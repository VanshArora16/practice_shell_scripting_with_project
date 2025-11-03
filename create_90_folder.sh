#!/bin/bash


<< task 

$1 for the foldername
$2 $3 for the starting and the ending rage respectively

task

for (( i=$2; i<=$3; i++ ))
	do
		mkdir "$1_$i"
	done
