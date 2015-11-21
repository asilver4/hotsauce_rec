class AddUserIdToSauces < ActiveRecord::Migration
  def change
    add_column :sauces, :user_id, :integer
    add_index :sauces, :user_id
  end
end
