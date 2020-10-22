echo "How many files (files only, directories are not counted) are there in this folder? Print your guess and press enter:"
function guess {
local answerarray=($(ls -l | grep "^-" | wc)) #I made the array which store data from the output of ls function, which counts only files, not directories
local answer=$(echo ${answerarray[0]})
read number
while [[ $number -ne $answer ]]
do
	if [[ $number -lt $answer ]]
	then
		echo "Your guess is to low"
		echo "Try again! Print your next guess and print enter:"
	elif [[ $number -gt $answer ]]
	then
		echo "Your guess it too high"
		echo "Try again! Print your next guess and print enter:"
	fi
	read number
done
echo "Congratulations! You guessed right!"
}
guess 
