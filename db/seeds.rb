m = Message.new
m.content = "おはようございます！"
m.save!

m = Message.new
m.content = "こんにちは！"
m.save!

m = Message.new
m.content = "こんばんは！"
m.save!

m = Message.new
m.content = "おやすみなさい！"
m.save!

u = User.new
u.name = "alice"
u.password = "password"
u.save!

u = User.new
u.name = "bob"
u.password = "password"
u.save!

u = User.new
u.name = "carol"
u.password = "password"
u.save!
