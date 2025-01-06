# script/create_user.rb
User.create!(email: 'nhi1107@email.com', password: 'nhi1107', password_confirmation: 'nhi1107') unless User.exists?(email: 'nhi1107@email.com')
