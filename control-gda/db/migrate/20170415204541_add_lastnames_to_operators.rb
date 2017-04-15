class AddLastnamesToOperators < ActiveRecord::Migration
  def change
    add_column :operators, :lastname, :string
  end
end
