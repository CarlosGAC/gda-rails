class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :classification
      t.string :number
      t.text :description

      t.timestamps null: false
    end
  end
end
