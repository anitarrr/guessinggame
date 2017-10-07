#!/usr/bin/env bash
# File: guessinggame.sh

function checknumber {
	echo "Let's play a game and try to guess how many files are in the directory you're running this script right now. Please, type in a number and press Enter:"
	read response 
	while [[ $response -ne $num ]]
	do
		if [[ $response -lt $num  ]]
		then
			echo "The guess that you made is lower. Please, try again: "
			read response
		elif [[ $response -gt $num  ]]
		then
			echo "The guess that you made is higher. Please try again: "
			read response
		fi			
	done 

	if [[ $response -eq $num ]]
	then	
		echo "Congratulations! You just guessed how many files are in this directory! Exactly $response."
	else
		echo "The value you just introduced is an exception, and cannot be evaluated."
	fi
}

function numberoffiles {
	num=`ls -l | grep ^- | wc -l`	
	checknumber	
}

numberoffiles
