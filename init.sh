#!/bin/bash

foreman-installer

foreman-rake db:migrate
foreman-rake db:seed

echo "Resetting admin permissions"
foreman-rake permissions:reset
tail -f /var/log/foreman/production.log
