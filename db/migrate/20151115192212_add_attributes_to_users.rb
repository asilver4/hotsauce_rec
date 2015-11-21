class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mild, :boolean
    add_column :users, :medium, :boolean
    add_column :users, :hot, :boolean
    add_column :users, :hotter, :boolean
    add_column :users, :hottest, :boolean
    add_column :users, :superhot, :boolean
    add_column :users, :sweet, :integer
    add_column :users, :smoke, :integer
    add_column :users, :fruit, :integer
    add_column :users, :vinegar, :integer
    add_column :users, :garlic, :integer
    add_column :users, :salt, :integer
    add_column :users, :vegan, :boolean
    add_column :users, :no_gluten, :boolean
    add_column :users, :no_alcohol, :boolean
  end
end
