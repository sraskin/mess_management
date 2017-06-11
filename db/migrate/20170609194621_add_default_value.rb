class AddDefaultValue < ActiveRecord::Migration
  def change
    change_column :deposits, :amount, :integer, :default => 0
    change_column :meals, :breakfast, :float, :default => 0
    change_column :meals, :lunch, :float, :default => 0
    change_column :meals, :dinner, :float, :default => 0
    change_column :meals, :guest, :float, :default => 0
    change_column :meals, :total, :float, :default => 0
    change_column :services, :amount, :integer, :default => 0
  end
end
