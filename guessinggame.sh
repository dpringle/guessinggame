#!/usr/bin/env bash
# File: guessinggame.sh
# Run with: $ bash guessinggame.sh

nfiles=$( ls | wc -l)
correct=0
read -p "Guess the number of files in the current directory: "  nguess

function checkguess {

if [[ $nguess -eq $nfiles ]]; then
	echo "Good job, you guessed right!"
      	correct=1

elif [[ $nguess -gt $nfiles ]]; then
	read -p "Sorry, too high! Guess again: "  nguess

else
	read -p "Sorry, too low! Guess again: "  nguess

fi
}

while [[ $correct -eq 0 ]]
do
	checkguess
done
