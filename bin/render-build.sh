set -o errexit
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
bundle exec rails runner "User.create!(email: 'nhi1107@gmail.com', password: 'nhi1107', password_confirmation: 'nhi1107')"


