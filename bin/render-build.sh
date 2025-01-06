
set -o errexit
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
web: bundle exec rails server
release: bundle exec rails runner 'require_relative "./script/create_user"'


