#!/bin/bash 
cd /home/ubuntu/aws-sample-deploy
source ~/.rvm/scripts/rvm
rvm use ruby-3.0.0@aws-deploy

# Move env variables
sudo cp /home/ubuntu/shared/production.key /home/ubuntu/aws-sample-deploy/config/credentials/

RAILS_ENV=production bundle exec rake assets:precompile