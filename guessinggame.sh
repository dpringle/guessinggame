#!/usr/bin/env bash
# File: guessinggame.sh
#
# Ask the user to guess number of files in the present directory
# Congratulate if correct
# Advise if too low or too high, and ask for another guess
# Run with: $ bash guessinggame.sh

nfiles=$( ls | wc -l)
correct=0
read -p "Guess the number of files in this directory: "  nguess

while [[ $correct -eq 0 ]]
do

if [[ $nguess -eq $nfiles ]]; then
	echo "Good job, you guessed right!"
	correct=1

elif [[ $nguess -gt $nfiles ]]; then
	read -p "Sorry, too high! Guess again: "  nguess

else
	read -p "Sorry, too low! Guess again: "  nguess

fi
done


