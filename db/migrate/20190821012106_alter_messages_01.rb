class AlterMessages01 < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :user
  end
end
