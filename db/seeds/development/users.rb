# ユーザを作成
user_names = %w(alice bob carol)
user_names.each do |name|
  User.create(name: name, password: "password")
end
