CI / CD Demo with Docker
========================

Run GitLab / Jenkins 2 in docker for CI/CD process

## Start the platform 

+ Start the Vagrant VM with `vagrant up`
+ Connect to the VM `vagrant ssh`
+ Build the Jenkins container with Docker capability 
	+ `cd /vagrant/ci-platform/`
	+ `docker build -f Dockerfile.jenkins -t jenkinsdocker .`
+ Start Jenkins `./jenkins2.sh`
+ Start GitLab `./gitlab.sh`
+ Start Docker Registry `docker run -d -p 5000:5000 --name registry registry:2`

## Finish setting

Now you can access to your favorite tools on this url : 
+ Jenkins : [192.168.50.4:9080](192.168.50.4:9080)
+ GitLab : [http://192.168.50.4:480](http://192.168.50.4:480)


