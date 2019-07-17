class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :user, null: false
      t.string :content, null: false
      t.datetime :created_at, null: false
    end

    add_foreign_key :messages, :users
  end
end
