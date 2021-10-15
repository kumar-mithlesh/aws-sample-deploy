#!/bin/bash 

# Backup current deployment 
sudo mv /home/ubuntu/aws-sample-deploy /home/ubuntu/backup/aws-sample-deploy

# Remove if previous deployment folder exists
sudo rm -rf /home/ubuntu/aws-sample-deploy

# Create new deployment folder
mkdir /home/ubuntu/aws-sample-deploy

# Move env variables
# Note: puma_config file on server
sudo cp /home/ubuntu/shared/production.key /home/ubuntu/aws-sample-deploy/config/credentials/
mkdir /home/ubuntu/aws-sample-deploy/tmp/pids
mkdir /home/ubuntu/aws-sample-deploy/tmp/sockets

# Assign permissions
sudo chown ubuntu:ubuntu -R /home/ubuntu/aws-sample-deploy