#!/usr/bin/env bash
# File: guessinggame.sh

files_count=$(ls | wc -l)	#number of files in present directory.

echo "Please guess the number of files in this directory" && echo "Please type your guess and press enter: "	#user input for guessing number of files in directory
read response

#script generated responses to user input

	while [[ $response -gt $files_count ]]
	do
		echo "Your guess is too high. Please try again: "
		read response

		while [[ $response -lt $files_count ]]
		do
			echo "Your guess is too low. Please try again: "
			read response
		done
	done

	while [[ $response -lt $files_count ]]
	do
		echo "Your response is too low. Please try again: "
		read response

		while [[ $response -gt $files_count ]]
		do
			echo "Your guess is too high. Please try again: "
			read response
		done
	done
	while [[ response =~ [a-z]+*[A-Z]+* ]]
	do
		echo "Invalid response. Please try again: "
		read response
	done

	if [[ $response == $files_count ]]
	then
		echo "Congratulations!!! Your guess is correct. There are $files_count file(s) in this directory."
	fi
