#!/usr/bin/env bash
# File: makefile

all: README.md

README.md: guessinggame.sh
	touch README.md
	echo 'echo "Project title:- Peer-graded Assignment: Bash, Make, Git, and GitHub"' >> README.md
	echo 'echo "Make was run on the date below: "' >> README.md
	date -r guessinggame.sh >> README.md
        echo 'echo "guessinggame file contains $(wc -l guessinggame) lines of code: "' >> README.md
