class AddConstantToUsers < ActiveRecord::Migration
  def change
    add_column :users, :constant, :integer, :default => 1
  end
end
