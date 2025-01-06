set -o errexit
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
bundle exec rake db:migrate db:seed db:create_admin_user


