
all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "#Project title:- Peer-graded Assignment: Bash, Make, Git, and GitHub.#" >> README.md
	echo "-Make was run on: " >> README.md
	date -r guessinggame.sh >> README.md 

	echo "-The number of lines of code contained in "guessinggame.sh" is: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
