class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name, null: false
      t.string :handle_name, null: false
      t.string :hashed_password
      t.boolean :is_administrator, null: false, default: false

      t.timestamps
    end
  end
end
