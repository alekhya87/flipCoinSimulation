#!/bin/bash/ -x
echo "flip Coin Simulation"
#useCase-1
isHead=1
randomCheck=$((RANDOM%2))
if [ $isHead -eq $randomCheck ]
then
	echo "Head is Winner"
else
	echo "Tail is Winner"
fi
#useCase-2
flips=1
heads=0
tails=0 
while [ $flips -le 20 ]
do
     ((flips++))
     if [ $((RANDOM%2)) -eq 1 ]
     then   
		  echo "heads wins"
        ((heads++))
     else   
		  echo "tails wins"
        ((tails++))
	  fi
echo "total heads are :" $heads "total tails are :" $tails
done
#usecase-3
while [ $flips -le 42 ]
do
   	((flips++))
   	if [ $((RANDOM%2)) -eq 1 ]
   	then
			echo "heads wins"
      	((heads++))
   	else
     		echo "tails wins"
      	((tails++))
   	fi
		if [ $heads -eq 21 ]
		then
			echo "heads wins by "$heads" times" 
			exit
		elif [ $tails -eq 21 ]
		then
			echo "tails wins by "$tails" times"
			exit
		elif [ $heads -eq $tails -a $tails -eq $heads ]
		then
			echo "both heads and tails are tie"
			#usercase4
			if [ $((RANDOM%2)) -eq 1 -o $((RANDOM%2)) -eq 1 -a $((RANDOM%2)) -eq 1 ]
			then
				((heads++))
				((heads++))
				echo "heads wins by"$heads
			else
				((tails++))
				((tails++))
				echo "tails wins by"$tails
			fi
			exit
		else
			continue
		fi
done
