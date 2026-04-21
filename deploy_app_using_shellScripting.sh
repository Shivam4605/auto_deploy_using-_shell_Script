


#!/bin/bash

<< task 

deploy a Django app using the 
shell screpting and handle the errors

task

code_clone(){

	echo "Cloning the Django appi..."

	git clone https://github.com/LondheShubham153/django-notes-app.git
        
	cd django-notes-app

}

install_requirement(){

	echo "installing dependecies"
	sudo apt-get install docker.io nginx -y
}

required_restart(){

	sudo systemctl enable docker
	sudo systemctl enable nginx
}

deploy(){

	docker build -t notes_app .
	docker run -d -p 8080:8080 notes_app:latest
}

echo "deployment started...."

code_clone
install_requirement
required_restart
deploy

echo "deployment done..."
