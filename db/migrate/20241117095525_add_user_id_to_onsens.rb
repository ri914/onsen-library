class AddUserIdToOnsens < ActiveRecord::Migration[7.1]
  def change
    add_column :onsens, :user_id, :integer, null: true
    add_index :onsens, :user_id

    reversible do |dir|
      dir.up do
        execute "UPDATE onsens SET user_id = 1"
      end
    end

    change_column_null :onsens, :user_id, false
    add_foreign_key :onsens, :users
  end
end
