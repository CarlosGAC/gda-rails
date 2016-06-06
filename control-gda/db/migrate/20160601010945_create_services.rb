class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.date :date
      t.time :hour
      t.string :client
      t.integer :id_car
      t.integer :id_truck
      t.integer :id_operator
      t.string :ubication
      t.string :destiny
      t.integer :inventary_num
      t.integer :keys_num
      t.integer :id_assistance

      t.timestamps null: false
    end
  end
end
