set -o errexit

# Cài đặt các gem
bundle install

# Biên dịch assets (nếu cần)
bundle exec rails assets:precompile
bundle exec rails assets:clean

# Thực hiện migration
bundle exec rails db:migrate

# Tạo user tự động
bundle exec rails runner "User.create!(email: 'nhi1107@gmail.com', password: 'nhi1107', password_confirmation: 'nhi1107') unless User.exists?(email: 'nhi1107@gmail.com')"
