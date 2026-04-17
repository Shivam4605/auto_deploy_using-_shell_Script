#!/bin/bash


<< comment

geet(){
#num = $1

echo "enter the number"
read num

while [[ $num -le 5 ]]
do
        echo "shivam"
        num=$num+1
done
 
}

geet 

comment



greet(){

num=$1;

while [[ $num -le 10 ]]
do
	if (($num%2 == 0))
	then
		echo $num
	fi
	((num++))
done

}

greet 3


