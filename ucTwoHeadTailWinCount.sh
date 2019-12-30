#FLIP COIN SIMULATOR: USE CASE 2 -> LOOP THROUGH MULTIPLE TIMES OF FLIPPING A COIN AND SHOW NUMBER OF TIMES HEAD AND TAIL HAS WON .

LIMIT=10;

headCount=0;
tailCount=0;
counter=0;

getFlipCoinResult () {
	result=$(( RANDOM%2 ));

	if [ $result -eq 1 ]
	then
		echo "HEAD";
		((headCount++));
	else
		echo "TAIL";
		((tailCount++));
	fi;
}

flipCoinMain () {
	while [ $counter -lt $LIMIT ]
	do
		getFlipCoinResult;
		((counter++));
	done;

	echo "HEAD WIN : " $headCount;
	echo "TAIL WIN : " $tailCount;
}

flipCoinMain;

