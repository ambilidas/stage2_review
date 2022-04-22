#!/bin/bash


coin=$(( RANDOM % 2 ))
if(( coin == 0 ))
then
    echo "Heads"
else
    echo "Tails"
fi
