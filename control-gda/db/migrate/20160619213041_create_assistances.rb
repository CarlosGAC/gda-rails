class CreateAssistances < ActiveRecord::Migration
  def change
    create_table :assistances do |t|
      t.date :date
      t.time :time
      t.string :company
      t.string :record_number
      t.string :company_user
      t.integer :id_service
      t.integer :id_affiliate
      t.string :affiliate_plays
      t.string :company_pays
      t.time :contact_time
      t.time :end_time
      t.string :who_quoted
      t.text :comments

      t.timestamps null: false
    end
  end
end
