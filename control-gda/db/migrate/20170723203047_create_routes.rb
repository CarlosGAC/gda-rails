class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.integer :kilometers

      t.timestamps null: false
    end
  end
end
