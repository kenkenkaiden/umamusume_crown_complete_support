#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate
bundle exec rake db:seed_fu RAILS_ENV=production # seed_fuというgemを使ってレース情報などをDBに入れている