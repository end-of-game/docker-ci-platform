#!/usr/bin/env bash

docker rm jenkins2

docker run  	--name jenkins2 \
            	-d -p 9080:8080 -p 50000:50000 \
            	-v /vagrant/docker-data:/var/jenkins_home \
            	-v /vagrant/docker-data:/root/.m2 \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-v $(which docker):/usr/bin/docker \
            jenkinsdocker

## --env JAVA_OPTS=-Dhudson.footerURL=http://mycompany.com \

