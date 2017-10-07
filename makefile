#!/usr/bin/env bash
# File: makefile

all: 	readme

readme:
	touch README.md
	echo "# Guessing Game" >> README.md
	echo "### When the make was run: " >> README.md
	date >> README.md
	echo "Number of lines:" `wc -l guessinggame.sh | egrep [0-9]+ -o` >> README.md
	
clean:
	rm -f README.md 
