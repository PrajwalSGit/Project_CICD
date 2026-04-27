#!/bin/bash

sudo apt-get update -y

sudo apt-get update
sudo apt-get install jenkins

sudo systemctl daemon-reload
sudo systemctl start jenkins

sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl enable jenkins
sudo systemctl status jenkins