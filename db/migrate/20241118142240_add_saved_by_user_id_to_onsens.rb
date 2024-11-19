class AddSavedByUserIdToOnsens < ActiveRecord::Migration[7.1]
  def change
    add_column :onsens, :saved_by_user_id, :integer
    add_index :onsens, :saved_by_user_id
  end
end
