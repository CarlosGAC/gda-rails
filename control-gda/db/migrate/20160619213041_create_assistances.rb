class CreateAssistances < ActiveRecord::Migration
  def change
    create_table :assistances do |t|
      t.string :record_number
      t.string :company_user
      t.string :affiliate_name
      t.string :affiliate_pays
      t.string :company_pays
      t.time :contact_time
      t.time :end_time
      t.string :who_quoted
      t.text :comments

      t.timestamps null: false
    end
  end
end
