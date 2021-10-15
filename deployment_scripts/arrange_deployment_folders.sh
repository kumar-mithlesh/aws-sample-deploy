#!/bin/bash 

# Remove if previous backup folder exists
sudo rm -rf /home/ubuntu/backup/aws-sample-deploy

# Backup current deployment 
sudo mv /home/ubuntu/aws-sample-deploy /home/ubuntu/backup/aws-sample-deploy

# Remove if previous deployment folder exists
sudo rm -rf /home/ubuntu/aws-sample-deploy

# Create new deployment folder
mkdir /home/ubuntu/aws-sample-deploy

# Assign permissions
sudo chown ubuntu:ubuntu -R /home/ubuntu/aws-sample-deploy