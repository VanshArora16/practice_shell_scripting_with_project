#!/bin/bash


# this my second script


<< multi

anything here written
will not executed as it is multiline comment
for this just use "<<" and alongside write anything like here we write multi
multi


# here we see how we declare variable

name="vansh"

echo "my name is name X use $ to replace value with variable"


echo "my name is $name"


<< run_command
now we see how we can run commands like date, mkdir,etc  using script
we need to write command like this example $(date) 
and thats it syntAX:$(command)
run_command

echo "today date is $(date)"


# now we see how we can take input from the user for this we use "read <variable_name>"
echo "enter your name"
read username

echo "Hi $username"


