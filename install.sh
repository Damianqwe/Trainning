#!bin/bash
#Create spring user
# - make sure user has has a home folder(-m)
# - set the default shell to bash (-s)
# this is because sh isn't as easy use as bash
sudo useradd -m -s /bin/bash spring
#install java + git +maven
sudo apt install -y openjdk-8-jre openjdk-8-jdk git
sudo apt install -y maven

#install the service  script into the folder by coping it to there
sudo cp spring.service /etc/systemd/system

#install reload proccess

sudo systemctl daemon-reload
