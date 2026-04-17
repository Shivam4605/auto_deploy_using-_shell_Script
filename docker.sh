

#!/bin/bash

image="ubuntu:latest"

#if docker image inspect "$image" > /dev/null 2>&1
#then
#    echo "Image already present"
#else
#    echo "Image not present. Pulling now..."
#    docker pull "$image"
#fi


for ((num=1; num<=$1; num++))
do
	mkdir demo$num
done
