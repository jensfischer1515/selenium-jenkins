#!/bin/sh

#echo 'Acquire::http::Proxy "http://192.168.59.4:8000";' > /etc/apt/apt.conf.d/01proxy
wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
apt-get update

apt-get install -y unzip git openjdk-7-jdk jenkins

wget -qO- https://get.docker.com/ | sh

cp /vagrant/files/etc/default/docker /etc/default/docker
service docker restart

su - jenkins -c 'wget -q -O /var/lib/jenkins/plugins/docker-build-step.hpi http://updates.jenkins-ci.org/latest/docker-build-step.hpi'
