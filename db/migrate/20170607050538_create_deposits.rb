class CreateDeposits < ActiveRecord::Migration
  def change
    create_table :deposits do |t|
      t.integer :user_id
      t.integer :member_id
      t.string :name
      t.integer :amount
      t.datetime :date
      t.text :comments

      t.timestamps null: false
    end
  end
end
