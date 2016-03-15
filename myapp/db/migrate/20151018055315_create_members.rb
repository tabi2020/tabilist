class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :number, null: false
      t.string :name
      t.string :email
      t.string :loginname
      t.timestamps null: false
    end
  end
end
