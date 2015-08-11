class AddExpoIdToGabineteObjects < ActiveRecord::Migration
  def change
    add_column :gabinete_objects, :expo_id, :integer
  end
end
