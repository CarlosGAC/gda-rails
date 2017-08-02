class AddBoothToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :booth_price, :string
  end
end
