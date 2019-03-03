
#!/bin/bash
# first parameter -> total number of pages
# second parameter -> even/odd pages

odd(){
	cont1=1;
	cont2=1;
	for (( i=1; i<=$1; i++))
	do
		modulus=`expr $cont2 % 2`
		# echo "mod: $modulus, cont1: $cont1, cont2: $cont2"

		if (($modulus!=0))
		then
			if (($i==1))
			then
				echo -n "$i"
			else
				echo -n ", $i"
			fi
		fi

		if (($cont1==2))
		then
			((cont2++))
			((cont1=0))
		fi
		((cont1++))
	done
}

even(){
	cont1=1;
	cont2=1;
	for (( i=3; i<=$1; i++))
	do
		modulus=`expr $cont2 % 2`
		# echo "mod: $modulus, cont1: $cont1, cont2: $cont2"

		if (($modulus!=0))
		then
			if (($i==3))
			then
				echo -n "$i"
			else
				echo -n ", $i"
			fi
		fi

		if (($cont1==2))
		then
			((cont2++))
			((cont1=0))
		fi
		((cont1++))
	done
}



if [ -z "$1" ]; then
	echo "you must write number of pages and even/odd pages in that order after 2print_numbers execution command"
# -a means AND operator, -n means not empty string, -z means empty string
elif [ -z "$2" -a -n "$1" ]; then
	echo "numbers corresponding to odd pages from 1 to $1"
	odd $1
	echo ""
	echo "numbers corresponding to even pages from 2 to $1"
	even $1

else
	if [ "odd" == "$2" ];
	then
		echo "numbers corresponding to odd pages from 1 to $1"
		odd $1
	fi
	if [ "even" == "$2" ];
	then
		echo "numbers corresponding to even pages from 2 to $1"
		even $1

	fi
fi

# ejemplofor i in {1..$max..2}

echo ""
