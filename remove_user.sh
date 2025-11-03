#!/bin/bash

read -p "Enter User Name TO remove With its home Dir: " username


echo "removing $username"

sudo userdel -r $username

echo "$username removed"
