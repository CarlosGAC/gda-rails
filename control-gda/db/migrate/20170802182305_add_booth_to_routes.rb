class AddBoothToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :booth_price, :integer
  end
end
