#!/bin/bash 

# Move env variables
# Note: puma_config file on server
mkdir /home/ubuntu/aws-sample-deploy/tmp/pids
mkdir /home/ubuntu/aws-sample-deploy/tmp/sockets

# Assign permissions
sudo chown ubuntu:ubuntu -R /home/ubuntu/aws-sample-deploy
sudo chown ubuntu:ubuntu -R /home/ubuntu/aws-sample-deploy/tmp/pids/