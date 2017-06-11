class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :user_id
      t.integer :member_id
      t.float :breakfast
      t.float :lunch
      t.float :dinner
      t.float :guest
      t.float :total

      t.timestamps null: false
    end
  end
end
