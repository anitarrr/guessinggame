#!/usr/bin/env bash
# File: makefile

all: 	readme

readme:
	echo "# Guessing Game" > README.md
	echo "### When the make was run: " >> README.md
	date >> README.md
	echo "### Some information about the program:" >> README.md
	echo "Number of lines:" `wc -l guessinggame.sh | egrep [0-9]+ -o` >> README.md
	
clean:
	rm -f README.md 
