[['alex@mail.com', 'password0']].each do |u|
  User.create(:email => u.first, :password => u.last, :password_confirmation => u.last) unless User.exists?(:email => u.first)
end
