%w(alice bob carol).each do |name|
  user = User.new(
    user_name: "#{name}",
    handle_name: "#{name.capitalize}",
    password: "pw"
  )
  if name == "alice"
    user.is_administrator = true
  end
  user.save!
end
