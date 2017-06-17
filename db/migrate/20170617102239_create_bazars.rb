class CreateBazars < ActiveRecord::Migration
  def change
    create_table :bazars do |t|
      t.integer :user_id
      t.integer :member_id
      t.text :name
      t.integer :amount
      t.string :other_expense
      t.integer :other_amount
      t.datetime :date

      t.timestamps null: false
    end
  end
end
