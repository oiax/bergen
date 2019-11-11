# ユーザを変数に保存
alice = User.find_by(name: "alice")
bob = User.find_by(name: "bob")
carol = User.find_by(name: "carol")

# ユーザ毎にメッセージを作成
# ここは自由にカスタマイズしてください。
Message.create(user: alice, content: "はじめまして、#{alice.name}です")
Message.create(user: bob, content: "Railsの勉強頑張るぞー！")
Message.create(user: carol, content: "#{bob.name}君には負けられない！")
Message.create(user: alice, content: "このエラーは何で発生してるのかしら…")
Message.create(user: bob, content: "少しずつ分かってきて楽しくなってきた！")
