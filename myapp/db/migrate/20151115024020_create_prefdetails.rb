class CreatePrefdetails < ActiveRecord::Migration
  def change
    create_table :prefdetails do |t|
      t.integer :pref_id, null: false
      t.string :prefdetails_name, null: false
    end
  end
end
