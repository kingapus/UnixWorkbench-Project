
all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "Project title:- Peer-graded Assignment: Bash, Make, Git, and GitHub." >> README.md
	echo "Make was run on: " >> README.md
	date -r guessinggame.sh >> README.md 

	echo "the number of lines of code contained in "guessinggame.sh" is: $(wc -l guessinggame.sh)" >> README.md
