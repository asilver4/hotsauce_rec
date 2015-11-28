class CreateDescriptors < ActiveRecord::Migration
  def change
    create_table :descriptors do |t|
      t.string :name
    end
  end
end
