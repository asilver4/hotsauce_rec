class RemovePins < ActiveRecord::Migration
  def change
  	drop_table :pins
  end
end
