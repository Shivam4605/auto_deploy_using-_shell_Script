#!/bin/bash


# deleting the directories using the for loop
#for ((num=1; num<=5; num++)); 
#do
#	rmdir demo$num
#done


#createting the directories using the for loop

#for ((i=1; i<=5; i++));
#do
#	mkdir "demo$i"
#done


#creating the folders using the arguments

for (( i="$1"; i<="$2"; i++ ));
do
	mkdir "shivam$i"
done
