class AddForeignIdToServicesFromInventories < ActiveRecord::Migration
  def change
    add_reference :services, :inventory, index: true, foreign_key: true
  end
end
