#!/bin/sh
set -e

# Install gems
bundle install

# Precompile assets
bundle exec rails assets:precompile
bundle exec rails assets:clean

# Migrate the database
bundle exec rails db:migrate
