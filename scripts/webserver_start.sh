#!/bin/sh

ctx logger "Installing web server"

sudo yum install -t httpd

ctx logger "Starting web server"
sudo systemctl httpd start
