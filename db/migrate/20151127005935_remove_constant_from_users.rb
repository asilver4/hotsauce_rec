class RemoveConstantFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :constant, :integer
  end
end
