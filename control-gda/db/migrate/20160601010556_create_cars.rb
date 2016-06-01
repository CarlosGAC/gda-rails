class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :type
      t.string :color
      t.string :licence_plates
      t.string :model

      t.timestamps null: false
    end
  end
end
