class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :member_id, null: false
      t.string :plan_title, null: false 
      t.date :plan_date, null: false
      t.integer :plan_cost, null: false
      t.integer :plan_showflag, null: false
    end
  end
end
