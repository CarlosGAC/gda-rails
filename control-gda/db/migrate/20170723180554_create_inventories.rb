class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :authority
      t.string :serial
      t.string :maneuver
      t.integer :service_type
      t.string :number
      t.string :departure_place
      t.string :sinister_place
      t.string :driver_name

      t.timestamps null: false
    end
  end
end
