class RemovePropertiesFromSauces < ActiveRecord::Migration
  def change
  	remove_column :sauces, :mild, :boolean
    remove_column :sauces, :medium, :boolean
    remove_column :sauces, :hot, :boolean
    remove_column :sauces, :hotter, :boolean
    remove_column :sauces, :hottest, :boolean
    remove_column :sauces, :superhot, :boolean
    remove_column :sauces, :sweet, :integer
    remove_column :sauces, :smoke, :integer
    remove_column :sauces, :fruit, :integer
    remove_column :sauces, :vinegar, :integer
    remove_column :sauces, :garlic, :integer
    remove_column :sauces, :salt, :integer
    remove_column :sauces, :vegan, :boolean
    remove_column :sauces, :no_gluten, :boolean
    remove_column :sauces, :no_alcohol, :boolean
    remove_column :sauces, :constant, :integer
  end
end
