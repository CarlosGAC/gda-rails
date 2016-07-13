class AddForeignIdsToServices < ActiveRecord::Migration
  def change
    add_reference :services, :operator, index: true, foreign_key: true
    add_reference :services, :truck, index: true, foreign_key: true
    add_reference :services, :assistance, index: true, foreign_key: true
  end
end
