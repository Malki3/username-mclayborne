#! /bin/bash
# zip.sh
# author: Malcolm Clayborne
# date: 01/20/25

echo "Username rules:"
echo "-Must start with a lowercase letter"
echo "-May contain only lowercase letters, digitd, and underscores"
echo "-Must be between 3 and 12 characters long"
echo

read -r -p "Enter a username:" potentialusername

while echo "$potentialusername" | grep -E -v "^[a-z][a-z0-9_]{2,11}$"
do
	echo "Invalid username"
	read -r -p "Enter username:" potentialusername
done

echo "Thank you"
