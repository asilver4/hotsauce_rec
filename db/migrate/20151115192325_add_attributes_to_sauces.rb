class AddAttributesToSauces < ActiveRecord::Migration
  def change
    add_column :sauces, :mild, :boolean
    add_column :sauces, :medium, :boolean
    add_column :sauces, :hot, :boolean
    add_column :sauces, :hotter, :boolean
    add_column :sauces, :hottest, :boolean
    add_column :sauces, :superhot, :boolean
    add_column :sauces, :sweet, :integer
    add_column :sauces, :smoke, :integer
    add_column :sauces, :fruit, :integer
    add_column :sauces, :vinegar, :integer
    add_column :sauces, :garlic, :integer
    add_column :sauces, :salt, :integer
    add_column :sauces, :vegan, :boolean
    add_column :sauces, :no_gluten, :boolean
    add_column :sauces, :no_alcohol, :boolean
  end
end
