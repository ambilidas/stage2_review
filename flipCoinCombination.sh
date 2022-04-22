#!/bin/bash

read -p "enter the number of times coin flipping: " n;
declare -A singlet
for ((i=0;i<$n;i++))
do
flip=$((RANDOM%2));
if [ $flip -eq 0 ]
then
	singlet[$i]="H";
	
else
	singlet[$i]="T";

fi
done
echo ${singlet[@]};
