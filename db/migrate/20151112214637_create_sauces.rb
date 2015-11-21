class CreateSauces < ActiveRecord::Migration
  def change
    create_table :sauces do |t|
      t.string :description

      t.timestamps
    end
  end
end
