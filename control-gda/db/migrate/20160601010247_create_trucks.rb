class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :type
      t.integer :number

      t.timestamps null: false
    end
  end
end
