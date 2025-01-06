# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

if User.count == 0 # Chỉ tạo người dùng admin nếu chưa có user nào
  User.create!(
    email: "nhi1107@gmail.com",
    password: "nhi1107",
    password_confirmation: "nhi1107",
    admin: true
  )
end
