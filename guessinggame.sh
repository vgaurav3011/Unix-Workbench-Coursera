#!/usr/bin/env bash

echo "[Welcome to Vipul's Guessing game ]"

function problem {
	echo "Hey There! Guess the number of files in the directory:"
	read guess          ##Inputs the user guess
    answer=$(ls -1 | wc -l) ##the actual number of files in directory
}

problem

while [[ $guess -ne $answer ]]
do
	if [[ $guess -lt $answer ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	problem
done

echo "Well done! It is the correct answer, here is the list of files:"
echo "---" && ls -1
