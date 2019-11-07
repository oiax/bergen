class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      # フォローする側をfollowing_id、される側をfollower_idとして格納する
      t.integer :following_id
      t.integer :follower_id

      t.timestamps
    end
  end
end
