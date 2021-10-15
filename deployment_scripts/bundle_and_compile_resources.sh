#!/bin/bash 

#copy the credentials
sudo cp /home/ubuntu/shared/production.key /home/ubuntu/aws-sample-deploy/config/credentials/
# Note: puma_config file on server
sudo mkdir /home/ubuntu/aws-sample-deploy/tmp/pids
sudo mkdir /home/ubuntu/aws-sample-deploy/tmp/sockets

#assign ownership
sudo chown ubuntu:ubuntu -R /home/ubuntu/aws-sample-deploy/tmp/pids/
sudo chown ubuntu:ubuntu -R /home/ubuntu/aws-sample-deploy/tmp/sockets/

#change directory
cd /home/ubuntu/aws-sample-deploy
source ~/.rvm/scripts/rvm
rvm use ruby-3.0.0@aws-deploy

#bundle all the gems
RAILS_ENV=production bundle install --without development test

#precompile assets
RAILS_ENV=production bundle exec rake assets:precompile

# Run migrations in production
RAILS_ENV=production bundle exec rake db:migrate