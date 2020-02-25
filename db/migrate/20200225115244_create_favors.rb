class CreateFavors < ActiveRecord::Migration[5.2]
  def change
    create_table :favors do |t|
      t.references :user, null: false
      t.references :message, null: false
      t.timestamps
    end
  end
end
