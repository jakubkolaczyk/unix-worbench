#!usr/bin bash

function guessing_game {
	num_files=$(ls -1 | wc -l)
	guessed=false

	while ["$guessed" == false ]; do
		read -p "How many files are in current directory" guess

		if ! [["$guess" =~ ^[0-9]+$ ]]; then
			echo "Please enter + int"
		elif [ "$guess" -lt "$num_files"]; then
			echo "Your guess was too low. Try again"
		elif [ "$guess" -gt "$num_files"]; then
			echo "Your guess was too high. Try again"
		else 
			echo "Congrats, you are right"
			guessed=true
		fi
	done
}
guessing_game
