#!/bin/bash


<< err_handle


here we see how we can handle err using if then

err_handle



create_directory () {
	mkdir demo	
}

if ! create_directory; then
	echo "directory already existed and thats why we exiting..."
	sleep 1
	exit 1

fi

echo "demo directory created and you can do your work in demo now "

