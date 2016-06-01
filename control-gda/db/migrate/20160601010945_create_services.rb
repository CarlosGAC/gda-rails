class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :date
      t.string :hour
      t.integer :id_operator
      t.integer :id_car
      t.string :client
      t.integer :id_tow
      t.integer :keys
      t.integer :inventary_num
      t.string :ubication
      t.string :destiny

      t.timestamps null: false
    end
  end
end
