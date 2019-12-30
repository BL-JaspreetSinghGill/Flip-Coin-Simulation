#FLIP COIN SIMULATOR: USE CASE 3 -> CONTINUE FLIPPING THE COIN TILL HEAD OR TAIL HAVE WON 21 TIMES AND IF ITS WIN THEN BY HOW MUCH.

LIMIT=21;

headCount=0;
tailCount=0;

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

getWinnerAndDiff () {
	if [ $headCount -gt $tailCount ]
	then
		message="HEAD";
		diff=$(($headCount-$tailCount));
	else
		message="TAIL";
		diff=$(($tailCount-$headCount));
	fi;
}

displayResult () {
	message=$1;
	diff=$2;

	echo "HEAD WIN COUNT : " $headCount;
	echo "TAIL WIN COUNT : " $tailCount;
	echo "$message WIN BY $diff";
}

flipCoinMain () {
	while [[ $headCount -lt $LIMIT && $tailCount -lt $LIMIT ]]
	do
		getFlipCoinResult;
	done;

	getWinnerAndDiff;
	displayResult $message $diff;
}

flipCoinMain;
