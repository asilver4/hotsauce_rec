class AddConstantToSauces < ActiveRecord::Migration
  def change
    add_column :sauces, :constant, :integer, :default => 1
  end
end
