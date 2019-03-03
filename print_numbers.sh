#!/bin/bash
# first parameter -> maximum
# second parameter -> even/odd numbers

odd(){
	for (( i=1; i<=$1; i+=2))
		do
		if (($i==1))
		then
			echo -n "$i"
		else
			echo -n ", $i"
		fi
		done
}

even(){
	for (( i=2; i<=$1; i+=2))
		do
		if (($i==2))
		then
			echo -n "$i"
		else
			echo -n ", $i"
		fi
		done
}

if [ -z "$1" ]; then
	echo "you must write number of pages and even/odd mode in that order after print_numbers execution command"
# -a means AND operator, -n means not empty string, -z means empty string
elif [ -z "$2" -a -n "$1" ]; then
	echo "odd numbers from 1 to $1"
	odd $1
	echo ""
	echo "even numbers from 2 to $1"
	even $1

else
	if [ "odd" == "$2" ];
	then
		echo "odd numbers from 1 to $1"
		odd $1
	fi
	if [ "even" == "$2" ];
	then
		echo "even numbers from 2 to $1"
		even $1

	fi
fi

# ejemplofor i in {1..$max..2}

echo ""
