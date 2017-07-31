class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.date :date
      t.time :hour
      t.string :client
      t.string :ubication
      t.string :destiny
      #t.string :inventary_num
      t.string :keys_num
      t.string :brand
      t.string :car_type
      t.string :color
      t.string :licence_plates
      t.string :model
      t.timestamps null: false
    end
  end
end
