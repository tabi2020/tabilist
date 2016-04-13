class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.integer :prefdetail_id, null: false
      t.string :spot_name, null: false
      t.integer :spottype_id, null: false
      t.string :spot_url, null: false
      t.string :spot_address, null: false
      t.string :spot_gps, null: false
      t.string :spot_note
    end
  end
end
