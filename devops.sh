
# this is nothing but the shebang or ihashbang 
#!/bin/bash

echo "hii shivam from devOps"

#name="Shivam"

echo "Enter your Name : "
read name
echo "Name is the : $name , and date is the $(date)"


echo "Enter name of jetha wife"
read bandi

if [ "$bandi" = "daya" ]
then
    echo "jetha is loyal"
else
    echo "jetha is not loyal"
fi

echo "Script Execute successfully"


echo "Enter your age : "
read age

# -ge greater than equals

if [ "$age" -ge 18 ]
then
    echo "your are eligible for voting"
else
    echo "you are not eligible for voting"
fi

echo "Script run successfully"

# this is nothing but the argument
echo "argument is the : $0 $1"
