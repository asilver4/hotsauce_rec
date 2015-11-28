class CreatePreference < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.integer :user_id
      t.integer :descriptor_id
      t.integer :value
    end
  end
end
