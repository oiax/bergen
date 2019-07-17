class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.references :user, null: false
      t.references :message, null: false

      t.timestamps
    end

    add_foreign_key :votes, :users
    add_foreign_key :votes, :messages
  end
end
