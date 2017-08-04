class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :category
      t.integer :km_price
      t.integer :base_price

      t.timestamps null: false
    end
  end
end
