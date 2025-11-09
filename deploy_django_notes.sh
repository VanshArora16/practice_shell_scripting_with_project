#!/bin/bash

<< task
deploy django app & handle the code for errors
task


code_clone(){
	echo "start cloning Django App..."
	sleep 2
	git clone https://github.com/LondheShubham153/django-notes-app.git 
}


install_requirements(){
	echo "Installing Requirements of Django APP..."
	sleep 1
	#sudo apt-get install -y docker.io nginx docker-compose
	sudo apt-get install -y docker.io docker-compose
}

required_restarts(){
	sudo chown $USER /var/run/docker.sock
	#sudo systemctl enable docker
	#sudo systemctl enable nginx
	#sudo systemctl restart docker
}

deploy_app(){
	if [[ "$(basename "$PWD" )" != "django-notes-app" ]]; then
		if [[ -d django-notes-app ]]; then
			cd django-notes-app
		else
			echo "django-notes-app directory not found in current path "$PWD" and now exiting from the deployment"
			sleep 1
			exit 1
		fi
	fi
	docker build -t notes-app .
	#docker run -p 8080:8080 -d notes-app:latest
	docker compose up -d
}

echo "**************** Deployment Started ****************"
if ! code_clone; then
	echo "code already exist switching to code directory..."
	sleep 0.5
	cd django-notes-app
fi
if ! install_requirements; then
	echo "Installation of Requirements Falied! exiting the deployment..."
	sleep 1
	exit 1
fi
if ! required_restarts; then
	echo "System Fault Identified! exiting the deployment..."
        sleep 1
        exit 1
fi

if ! deploy_app; then
	echo "deployment failed sending main to admin"
	# sendmail
	exit 1
fi
echo "**************** Deployment Done ****************"
    
