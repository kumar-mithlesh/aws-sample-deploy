#!/bin/bash 
# Move env variables
# Assign permissions
sudo chown ubuntu:ubuntu -R /home/ubuntu/aws-sample-deploy

# Note: puma_config file on server
sudo mkdir /home/ubuntu/aws-sample-deploy/tmp/pids
sudo mkdir /home/ubuntu/aws-sample-deploy/tmp/sockets

sudo chown ubuntu:ubuntu -R /home/ubuntu/aws-sample-deploy/tmp/pids/