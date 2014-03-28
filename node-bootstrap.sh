#!/usr/bin/env bash

# Get root up in here
sudo su

apt-get -y update
apt-get install -y python-software-properties
apt-get install -y subversion curl
apt-get install -y git

add-apt-repository -y ppa:chris-lea/node.js
apt-get -y update
apt-get install -y nodejs
apt-get install -y libfontconfig1

sudo npm install -g yo
sudo npm install -g generator-webapp

