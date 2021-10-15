#!/bin/bash 
cd /home/ubuntu/aws-sample-deploy
source ~/.rvm/scripts/rvm
rvm use ruby-3.0.0@aws-deploy

#bundle all the gems
RAILS_ENV=production bundle install --without development test

#precompile assets
RAILS_ENV=production bundle exec rake assets:precompile

# Run migrations in production
RAILS_ENV=production bundle exec rake db:migrate