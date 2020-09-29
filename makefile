
all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "Project title:- Peer-graded Assignment: Bash, Make, Git, and GitHub" >> README.md
	Make was run on the date below:  >> README.md
	date -r guessinggame.sh >> README.md
        echo "guessinggame file contains $(wc -l guessinggame) lines of code: " >> README.md
