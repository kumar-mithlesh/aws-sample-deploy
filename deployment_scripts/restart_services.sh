#!/bin/bash

#restart all the services
sudo systemctl restart puma
sudo systemctl restart sidekiq
sudo systemctl restart nginx