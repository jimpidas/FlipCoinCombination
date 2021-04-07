#!/bin/bash -x
head=1
randomcheck=$((RANDOM%2))
if [ $randomcheck -eq $head ]
then
	echo "Heads"
else
	echo "Tail"
fi
