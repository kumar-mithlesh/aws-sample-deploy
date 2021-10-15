#!/bin/bash 
cd /home/ubuntu/aws-sample-deploy

source ~/.rvm/scripts/rvm
rvm use ruby-3.0.0@aws-deploy

# Run migrations in production
RAILS_ENV=production bundle exec rake db:migrate