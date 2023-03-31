README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "Make was run on: $$(date)" >> README.md
	echo "Number of lines of cdoe in guessinggame.sh: $$(wc -l guessinggame.sh | cut -d' ' -f1)" >> README.md 
