class AddIndexToGabineteObjects < ActiveRecord::Migration
  def change
    add_column :gabinete_objects, :expo_ID, :integer
    add_index :gabinete_objects, :expo_ID, unique: true
  end
end
