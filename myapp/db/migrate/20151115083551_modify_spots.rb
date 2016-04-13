class ModifySpots < ActiveRecord::Migration
  def change
  	add_column :spots, :spot_phone, :string
  	add_column :spots, :spot_cost, :integer
  	add_column :spots, :spot_startdt, :string
  	add_column :spots, :spot_closedt, :string
  end
end
