#!/usr/bin/env bash
# File: guessinggame.sh

# files_count=$(ls -al | wc -l)

files=($(ls -d *))
files_count=${#files[@]}

function check_guess {

    if [[ $1 -lt $2 ]]
    then
        echo "Your guess is too high."
    elif [[ $1 -gt $2 ]]
    then
        echo "Your guess is too low."
    fi
}

while [[ $input -ne $files_count ]]
do
    echo "Guess the number of files in this directory: "
    read input

    check_guess $files_count $input
done

echo "You guessed it right, champion!!!"

exit
