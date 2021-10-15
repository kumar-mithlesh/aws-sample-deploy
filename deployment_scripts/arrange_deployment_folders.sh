#!/bin/bash 

sudo rm -rf /home/ubuntu/backaws-sample-deploy

# Backup current deployment 
sudo mv /home/ubuntu/aws-sample-deploy /home/ubuntu/backup/aws-sample-deploy

# Remove if previous deployment folder exists
sudo rm -rf /home/ubuntu/aws-sample-deploy

# Create new deployment folder
mkdir /home/ubuntu/aws-sample-deploy