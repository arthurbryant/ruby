#!/bin/sh

bundle install && rake db:migrate && restart_rails && sidekiqctl stop tmp/pids/sidekiq.pid  60 && sidekiq -C config/sidekiq.yml -d && rake tmp:clear
