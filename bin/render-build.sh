#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate
bundle exec rails db:seed
bundle exec rake db:seed_fu RAILS_ENV=production