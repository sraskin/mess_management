class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :user_id
      t.string :name
      t.string :phone
      t.text :address

      t.timestamps null: false
    end
  end
end
