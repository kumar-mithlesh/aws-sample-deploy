#!/bin/bash 
cd /home/ubuntu/aws-sample-deploy

source ~/.rvm/scripts/rvm
rvm use ruby-3.0.0@aws-deploy

RAILS_ENV=production bundle install --without development test --deployment --quiet
