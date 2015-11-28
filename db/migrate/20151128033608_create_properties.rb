class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :sauce_id
      t.integer :descriptor_id
      t.integer :value
    end
  end
end
