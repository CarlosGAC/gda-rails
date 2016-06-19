class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :type
      t.string :number

      t.timestamps null: false
    end
  end
end
