#!/bin/bash
echo "Which of the following rocks is igneous?"
select ANSWER in granite sandstone slate
do
	if [ "$ANSWER" == "" ]; then
	echo -e "You need to enter an answer\n"
		continue
	elif [ "$ANSWER" != granite ]; then
	echo -e "Sorry. Incorrect\n"
	echo "1. Incorrect" >> rockexam.txt
		break
	elif [ "$ANSWER" == granite ]; then
	echo -e "Congratulations! That is the correct answer\n"
	echo "No. 1 - Correct" >> rockexam.txt
		break
	fi
done
exit

