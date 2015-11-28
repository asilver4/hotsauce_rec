class RemovePropertiesFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :mild, :boolean
    remove_column :users, :medium, :boolean
    remove_column :users, :hot, :boolean
    remove_column :users, :hotter, :boolean
    remove_column :users, :hottest, :boolean
    remove_column :users, :superhot, :boolean
    remove_column :users, :sweet, :integer
    remove_column :users, :smoke, :integer
    remove_column :users, :fruit, :integer
    remove_column :users, :vinegar, :integer
    remove_column :users, :garlic, :integer
    remove_column :users, :salt, :integer
    remove_column :users, :vegan, :boolean
    remove_column :users, :no_gluten, :boolean
    remove_column :users, :no_alcohol, :boolean
  end
end
