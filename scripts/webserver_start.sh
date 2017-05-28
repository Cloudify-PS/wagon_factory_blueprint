#!/bin/sh

ctx logger "Installing web server"

sudo yum install -y httpd

ctx logger "Starting web server"
sudo systemctl start httpd
