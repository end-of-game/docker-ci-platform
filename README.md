CI / CD Demo with Docker
========================

Run GitLab / Jenkins 2 in docker for CI/CD process

## Start the platform 

+ Start the Vagrant VM with `vagrant up`
+ Connect to the VM `vagrant ssh`
+ Build the Jenkins container with Docker capability 
	+ cd /vagrant/ci-platform/
	+ docker build -f Dockerfile.jenkins -t jenkinsdocker .
+ Start Jenkins `./jenkins2.sh`
+ Start GitLab `./gitlab.sh`


