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
