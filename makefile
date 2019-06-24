SHELL := /bin/bash

README.md: guessinggame.sh
	echo "Project title: $${PWD##*/}  " > README.md
	echo "Make was run: $$(date)  " >> README.md
	echo "Number of lines in guessinggame.sh: $$(wc -l $< | egrep -o "[0-9]+")  " >> README.md

clean:
	rm README.md
