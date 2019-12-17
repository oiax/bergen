class AlterUsers01 < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :full_name, :string, null: false, default: ""
    add_column :users, :bio, :string, null: false, default: ""
  end
end
