README.md:
	touch README.md
	echo "# guessinggame" >> README.md
	echo "the date and time at which make was run:" >> README.md
	date >> README.md
	echo "the number of lines of code in guissinggame.sh:" >> README.md
	wc -l guessinggame.sh | grep -o "^[0-9]* " >> README.md
