class CreatePlandetails < ActiveRecord::Migration
  def change
    create_table :plandetails do |t|
      t.integer :plan_id, null: false
      t.integer :spot_id, null: false
      t.date :plandatil_startdate
      t.date :plandatil_enddate
      t.string :plandetail_title, null: false
      t.string :plandetail_note, null: false
    end
  end
end
