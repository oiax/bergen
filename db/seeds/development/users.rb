# ユーザを作成
users = [
  ["alice", "鈴木アリス", "小説家。愛知県新城市生まれ。"],
  [
    "bob",
    "佐藤ボブ",
    "はーい。私の名前はボブです。最近プログラミングをはじめました。Railsの勉強をがんばりまーす。"
  ],
  ["carol", "高橋キャロル", "眠い。"]
]

users.each do |fields|
  User.create(name: fields[0], full_name: fields[1], bio: fields[2], password: "password")
end
