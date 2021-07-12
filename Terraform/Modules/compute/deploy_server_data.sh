#!/bin/bash
sudo yum install java-1.8.0-openjdk -y
cd /opt
sudo wget https://mirrors.estointernet.in/apache/tomcat/tomcat-10/v10.0.8/bin/apache-tomcat-10.0.8.tar.gz
sudo tar -xf apache-tomcat-10.0.8.tar.gz
sudo mv apache-tomcat-10.0.8 tomcat10
sudo chown -R ec2-user:ec2-user tomcat10/
cd tomcat10/bin/
./startup.sh