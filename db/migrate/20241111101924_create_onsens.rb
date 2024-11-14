class CreateOnsens < ActiveRecord::Migration[7.1]
  def change
    create_table :onsens do |t|
      t.string :name, null: false
      t.string :location
      t.text :description
      t.string :image
      t.text :activities
      t.string :best_time_to_visit
      t.text :access_info
      t.decimal :rating, precision: 2, scale: 1

      t.timestamps
    end
  end
end
