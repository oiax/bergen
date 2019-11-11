# ユーザを変数に保存
alice = User.find_by(name: "alice")
bob = User.find_by(name: "bob")
carol = User.find_by(name: "carol")

# フォロー・アンフォローに関するデータを追加
# aliceはbobとcarolをフォロー、bobはaliceだけをフォローしている状態を再現
Relationship.create(following_id: alice.id, follower_id: bob.id)
Relationship.create(following_id: alice.id, follower_id: carol.id)
Relationship.create(following_id: bob.id, follower_id: alice.id)
