#!/bin/bash




<< func

here we learn how to write a function in a shell script
syntax:(function defination)
function_name() {
----
---
--
-
}

(calling function)
function_name

func


check_loyality() {
	# Ask for names
	user=$1
	partner=$2

	# Ask for loyalty score
	read -p "On a scale of 0 to 100, how loyal is $user to $partner? " loyalty

	echo ""
	echo "Analyzing loyalty report for $user ❤️ $partner..."
	sleep 2
	# Evaluate loyalty
	if (( loyalty>90 )); then 	
		echo "💖 Wow! $user is head-over-heels for $partner. True love detected!"
		echo "You two are basically the Bash version of Romeo and Juliet—minus the tragic ending!"
	elif (( loyalty <= 50 )); then
	    echo "😂 Uh-oh... $user might be more loyal to their Wi-Fi than to $partner."
	    echo "Friendship level: buffering... Loyalty level: 404 not found."
	elif (( loyalty > 50 && loyalty <= 90 )); then
	    echo "🤝 Hmm... $user likes $partner, but maybe just as a really *really* good friend."
	    echo "Welcome to the friendzone express. Snacks are complimentary."
	else
	    echo "🤔 Invalid input. Loyalty must be between 0 and 100."
	fi
}

check_loyality "$1" "$2" 

