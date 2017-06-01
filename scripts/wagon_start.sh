#!/bin/sh

ctx logger "Installing tools"

sudo yum -y install epel-release

sudo yum -y install wget unzip

ctx logger "Installing  pip and virtualenv"

sudo yum -y install python-pip python-virtualenv

SCRIPT=`ctx download-resource scripts/create_wagon.sh '@{"target_path": "/tmp/create_wagon.sh"}'`

shmod 600 ${SCRIPT} ${wagon_version} ${cloudify_version} ${plugin_zip}

sudo su - -c "/bin/bash ${SCRIPT}"
