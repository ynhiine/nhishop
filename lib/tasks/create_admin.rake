# lib/tasks/create_admin.rake
namespace :db do
  desc "Create an admin user"
  task create_admin: :environment do
    # Kiểm tra xem có tài khoản admin nào chưa, nếu chưa tạo mới
    unless User.exists?(email: "nhi1107@gmail.com")
      User.create!(
        email: "nhi1107@gmail.com",
        password: "nhi1107",  # Đặt mật khẩu cho tài khoản admin
        password_confirmation: "nhi1107",
        # Giả sử bạn có trường role để phân quyền
      )
      puts "Admin user created!"
    else
      puts "Admin user already exists."
    end
  end
end
