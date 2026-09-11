#!/bin/bash

FILE_NAME="Result.md"
SOLUTION="solution"
answer=$(cat "$SOLUTION")
grade=$(./grade-sol.sh)

if [[ "$grade" == "CONGRATS" ]]; then
	touch "$FILE_NAME"
	cat "Your solution: $answer , expected solution: 'special_devops!', verdict: PASS" >> "$FILE_NAME"
else
	touch "$FILE_NAME"
        cat "Your solution: $answer , expected solution: 'special_devops!', verdict: FAIL" >> "$FILE_NAME"
fi
